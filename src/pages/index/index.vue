<template>
  <view class="wrapper">
    <navbar />
    <view class="content">
      <view class="showcase">
        <card />
        <card />
        <card />
        <card />
        <card />
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
      title: 'Hello',
    };
  },
  onLoad() {},
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
