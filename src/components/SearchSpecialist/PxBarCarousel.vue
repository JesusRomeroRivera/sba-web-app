<template>
  <rl-carousel v-model="slide" @swipe-recognized="clearInterval">
    <div slot-scope="{ wrapperStyles, slides: { count, active } }">
      <div class="overflow-hidden text-center">
        <div v-bind="wrapperStyles">
          <slot></slot>
        </div>
      </div>
      <div class="mt-4 text-center">
        <span
          v-for="(item, index) in count"
          :key="index"
          class="mx-1 cursor-pointer"
          @click="
            slide = index;
            clearInterval();
          "
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="20"
            class="stroke-current"
            :class="{
              'text-grey': active !== index,
              'text-grey-dark': active === index,
            }"
          >
            <line x1="0" y1="10" x2="30" y2="10" stroke-width="2" />
          </svg>
        </span>
      </div>
    </div>
  </rl-carousel>
</template>

<script>
import { RlCarousel } from "vue-renderless-carousel";
export default {
  name: "PxBarCarousel",
  components: {
    RlCarousel,
  },
  data() {
    return {
      slide: 0,
      interval: undefined,
    };
  },
  methods: {
    clearInterval() {
      clearInterval(this.interval);
    },
  },
  created() {
    this.interval = setInterval(() => {
      this.slide += 1;
    }, 2000);
  },
};
</script>

<style lang="less" scoped>
svg {
  transition: color 0.5s ease;
}
</style>
