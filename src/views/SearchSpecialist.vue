<template>
  <section class="Search">
    <px-carrousell id="inicio"></px-carrousell>
    <px-ads></px-ads>
    <px-specialists-list></px-specialists-list>
    <!--<PxBarCarousel>
      <rl-carousel-slide>
        <div
            class="border border-blue p-8 mx-8 text-center text-3xl"
            style="width: 20vw;"
        >
          One
        </div>
      </rl-carousel-slide>
      <rl-carousel-slide>
        <div
            class="border border-red p-8 mx-8 text-center text-3xl"
            style="width: 40vw;"
        >
          Two
        </div>
      </rl-carousel-slide>
      <rl-carousel-slide>
        <div
            class="border border-green p-8 mx-8 text-center text-3xl"
            style="width: 80vw;"
        >
          Three
        </div>
      </rl-carousel-slide>
    </PxBarCarousel>-->
    <px-contact></px-contact>
  </section>
</template>

<script>
import PxCarrousell from "@/components/SearchSpecialist/PxCarrousell.vue";
//import PxBarCarousel from "@/components/SearchSpecialist/PxBarCarousel.vue";
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
    //PxBarCarousel,
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