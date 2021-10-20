<template>
  <section class="Information">
    <px-contact></px-contact>
    <px-info-tech></px-info-tech>
    <px-create-opinion v-if="this.showPopUpOpinion"></px-create-opinion>
  </section>
</template>

<script>
import PxContact from "@/components/CoreApp/PxContact.vue";
import PxInfoTech from "@/components/CoreApp/PxInfoTech.vue";
import PxCreateOpinion from "@/components/CoreApp/PxCreateOpinion.vue";

export default {
  name: "Information",
  components: {
    PxContact,
    PxInfoTech,
    PxCreateOpinion,
  },
  data() {
    return {
      buttonColor: "black",
    };
  },
  computed: {
    showPopUpOpinion(){
      return this.$store.state.popUpOpinion;
    }
  },
  beforeMount() {
  }
};
</script>
<style scoped>
.Information{
  margin-top: var(--header-height); 
}
</style>
