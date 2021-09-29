<template>
  <section class="Home">
    <px-carrousell></px-carrousell>
  </section>
</template>

<script>
import PxCarrousell from "@/components/Home/PxCarrousell.vue";

export default {
  name: "Home",
  components: {
    PxCarrousell,
  },
  data() {
    return {
    };
  },
};
</script>
<style scoped>
.Home{
}
</style>
