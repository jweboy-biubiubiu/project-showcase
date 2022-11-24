<template>
  <view class="list">
    <scroll-view scroll-y :scorll-top="0">
      <slot :data="list" />
    </scroll-view>
    <loading :visible="loading" />
  </view>
</template>

<script>
import Loading from '@/components/loading';

export default {
  components: { Loading },
  props: {
    request: { type: Function, default: () => Promise.resolve() },
    schema: { type: String, default: 'showcase-list' },
    condition: { type: String, default: '' },
  },
  data() {
    return {
      list: [],
      loading: false,
    };
  },
  mounted() {
    this.asyncGetList(this.condition);
  },
  methods: {
    refreshList(condition) {
      this.asyncGetList(condition);
    },
    asyncGetList(condition) {
      this.loading = true;
      const collection = this.$db.collection(this.schema);
      const sql =
        condition || this.condition
          ? collection.where(condition || this.condition)
          : collection;
      sql
        .get()
        .then(({ result }) => {
          this.list = result.data;
          this.loading = false;
        })
        .catch(() => {
          this.loading = false;
        });
    },
  },
};
</script>
