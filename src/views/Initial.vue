<template>
  <section class="Initial">
    <px-carrousell id="inicio"></px-carrousell>
    <px-tech-core id="servicios"></px-tech-core>
  </section>
</template>

<script>
import PxCarrousell from "@/components/Home/PxCarrousell.vue";
import PxTechCore from "@/components/CoreApp/PxTechCore.vue";

export default {
  name: "Initial",
  components: {
    PxCarrousell,
    PxTechCore,
  },
  data() {
    return {
      buttonColor: "black",
    };
  },
};
</script>
<style scoped></style>
