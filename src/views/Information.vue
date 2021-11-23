<template>
  <section class="Information">
    <px-contact></px-contact>
    <px-info-tech></px-info-tech>
    <px-create-opinion v-if="this.showPopUpOpinion"></px-create-opinion>
    <px-create-report v-if="this.showPopUpReport"></px-create-report>
  </section>
</template>

<script>
import PxContact from "@/components/CoreApp/PxContact.vue";
import PxInfoTech from "@/components/CoreApp/PxInfoTech.vue";
import PxCreateOpinion from "@/components/CoreApp/PxCreateOpinion.vue";
import PxCreateReport from "@/components/CoreApp/PxCreateReport.vue";

export default {
  name: "Information",
  components: {
    PxContact,
    PxInfoTech,
    PxCreateOpinion,
    PxCreateReport
  },
  data() {
    return {
      buttonColor: "black",
    };
  },
  computed: {
    showPopUpOpinion(){
      return this.$store.state.popUpOpinion;
    },
    showPopUpReport(){
      return this.$store.state.popUpReport;
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
