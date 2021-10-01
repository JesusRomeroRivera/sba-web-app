<template>
  <section class="Search">
    <px-carrousell id="inicio"></px-carrousell>
    <px-ads></px-ads>
    <px-specialists-list></px-specialists-list>
    <px-contact></px-contact>
  </section>
</template>

<script>
import PxCarrousell from "@/components/SearchSpecialist/PxCarrousell.vue";
//import PxAbout from "@/components/Home/PxAbout.vue";
import PxAds from "@/components/SearchSpecialist/PxAds.vue";
//import PxList from "@/components/Home/PxList.vue";
import PxSpecialistsList from "@/components/SearchSpecialist/PxSpecialistsList";
import PxContact from "@/components/Home/PxContact.vue";

export default {
  name: "Home",
  components: {
    PxCarrousell,
    //PxAbout,
    PxSpecialistsList,
    PxAds,
    //PxList,
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