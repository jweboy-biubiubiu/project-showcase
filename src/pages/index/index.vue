<template>
  <view class="wrapper">
    <navbar @change="handleNavbarChange">
      <list ref="list" :condition="condition">
        <template #default="{ data }">
          <card
            v-for="item in data"
            :key="item._id"
            :title="item.title"
            :desc="item.desc"
            :img-url="item.img_url"
            :mini-type="item.mini_type"
            :type="item.type"
            :url="item.url"
          />
        </template>
      </list>
    </navbar>
  </view>
</template>

<script>
import Navbar from '@/components/navbar';
import Card from '@/components/card';
import List from '@/components/list';

export default {
  name: 'HomePage',
  components: { Navbar, Card, List },
  data() {
    return {
      list: [],
      condition: `type == "MINI_PROGRAM"`,
    };
  },
  methods: {
    handleNavbarChange(data) {
      this.$refs.list.refreshList(`type == "${data}"`);
    },
  },
};
</script>

<style lang="scss" scoped>
.wrapper {
  background-color: $uni-bg-color-grey;
  .content {
    width: 70%;
    margin: 36rpx auto;
    .showcase {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(400rpx, 1fr));
      row-gap: 24rpx;
      column-gap: 24rpx;
    }
  }
}
</style>
