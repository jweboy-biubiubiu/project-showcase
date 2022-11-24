<template>
  <view class="cu-card article" @tap="handleCardClick">
    <view class="cu-item shadow">
      <view class="title">
        <view class="text-cut"> {{ title }}</view>
      </view>
      <view class="content">
        <image
          v-if="type === 'MINI_PROGRAM'"
          :src="imgUrl"
          mode="aspectFill"
          :style="{ width: '240rpx', height: '240rpx' }"
        ></image>
        <view class="desc">
          <view class="text-content"> {{ desc }}</view>
          <view>
            <view
              :class="['cu-tag', `bg-${miniProgram.color}`, 'light', 'round']"
              >{{ miniProgram.name }}</view
            >
          </view>
        </view>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  props: {
    title: { default: '', type: String },
    imgUrl: { default: '', type: String },
    desc: { default: '', type: String },
    miniType: { default: '', type: String },
    type: { default: '', type: String },
    url: { default: '', type: String },
  },
  computed: {
    miniProgram() {
      let current = {};
      if (this.miniType === 'WEIXIN') {
        current = { color: 'green', name: '微信小程序' };
      }
      if (this.miniType === 'ALIPAY') {
        current = { color: 'blue', name: '支付宝小程序' };
      }
      return current;
    },
  },
  methods: {
    handleCardClick() {
      if (this.type === 'H5') {
        window.location.href = this.url;
      }
    },
  },
};
</script>
