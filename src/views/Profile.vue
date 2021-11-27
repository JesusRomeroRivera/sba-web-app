<template>
  <section class="Profile">
    <px-user-profile v-if="whoIsTechOrCustomer == 'customer'"></px-user-profile>
    <px-tech-profile v-if="whoIsTechOrCustomer == 'tech'"></px-tech-profile>
  </section>
</template>

<script>
import PxUserProfile from "@/components/CoreApp/PxUserProfile.vue";
import PxTechProfile from "@/components/CoreApp/PxTechProfile.vue";

export default {
  name: "Information",
  components: {
    PxUserProfile,
    PxTechProfile
  },
  data() {
    return {
      buttonColor: "black",
      customerData: {},
      techData: {},
    };
  },
  computed: {
    whoIsTechOrCustomer(){
      return this.$store.state.type;
    },
  },
  methods: {
  },
  beforeMount() {
  }
}
</script>
<style scoped>
.Profile{
  margin-top: var(--header-height); 
}
</style>