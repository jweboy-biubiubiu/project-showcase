<template>
  <view class="wrapper">
    <navbar />
    <view class="content">
      <view class="showcase">
        <card
          v-for="item in list"
          :key="item._id"
          :img-url="item.img_url"
          :title="item.title"
        />
      </view>
    </view>
  </view>
</template>

<script>
import Navbar from '@/components/navbar';
import Card from '@/components/card';

export default {
  name: 'HomePage',
  components: { Navbar, Card },
  data() {
    return {
      list: [],
    };
  },
  onLoad() {
    const db = uniCloud.database({
      provider: 'aliyun',
      spaceId: 'bcbf1be5-180d-402d-83c4-587df231ebc9',
      clientSecret: 'eBPi2uhtRvm38SVm9SBILA==',
    });
    db.collection('showcase-list')
      .get()
      .then(({ result }) => {
        console.log(result);
        this.list = result.data;
      })
      .catch((e) => {
        console.log(e);
      });
  },
  methods: {},
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
