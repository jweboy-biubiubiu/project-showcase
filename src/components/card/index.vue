<template>
  <view class="card">
    <image style="width: 430rpx; height: 430rpx" :src="imgUrl" />
    <text>{{ title }}</text>
  </view>
</template>

<script>
export default {
  props: {
    title: { default: '', type: String },
    imgUrl: { default: '', type: String },
  },
};
</script>

<style lang="scss" scoped>
.card {
  padding: 24rpx;
  display: flex;
  flex-direction: column;
  align-items: center;
  border: 1px solid $uni-border-color;
  border-radius: 24rpx;
  box-shadow: 0 30px 60px 0 rgba(90, 116, 148, 0.4);
}
</style>
