<template>
  <section class="Home">
    <px-carrousell></px-carrousell>
    <px-about></px-about>
    <px-ads></px-ads>
    <px-list></px-list>
    <px-contact></px-contact>
  </section>
</template>

<script>
import PxCarrousell from "@/components/Home/PxCarrousell.vue";
import PxAbout from "@/components/Home/PxAbout.vue";
import PxAds from "@/components/Home/PxAds.vue";
import PxList from "@/components/Home/PxList.vue";
import PxContact from "@/components/Home/PxContact.vue";

export default {
  name: "Home",
  components: {
    PxCarrousell,
    PxAbout,
    PxAds,
    PxList,
    PxContact,
  },
  data() {
    return {};
  },
};
</script>
<style scoped>
.Home {
}
</style>
