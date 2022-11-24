<template>
  <view v-if="visible" class="cu-load load-modal">
    <view class="cuIcon-emojifill text-orange"></view>
    <view class="gray-text">加载中...</view>
  </view>
</template>

<script>
export default {
  props: {
    visible: { type: Boolean, default: false },
  },
};
</script>
