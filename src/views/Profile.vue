<template>
  <section class="Profile">
    <px-user-profile v-if="whoIsTechOrCustomer == 'customer'"></px-user-profile>
    <px-tech-profile v-if="whoIsTechOrCustomer == 'technician'"></px-tech-profile>
  </section>
</template>

<script>
import PxUserProfile from "@/components/CoreApp/PxUserProfile.vue";
import PxTechProfile from "@/components/CoreApp/PxTechProfile.vue";

import CustomerService from "@/services/customers-service.js";
import TechnicianService from "@/services/technicians-service.js";

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
       getDataUser(){
        CustomerService.getById(this.$store.state.userId)
        .then((response) => {
          this.customerData = response.data;
          this.$store.state.type = "customer";
          console.log(this.$store.state.type);
        })
        .catch((e) => {
            console.log(e);
        });
        TechnicianService.getById(this.$store.state.userId)
        .then((response) => {
            this.techData = response.data;
          this.$store.state.type = "technician";
            console.log(this.$store.state.type);
        })
        .catch((e) => {
          console.log(e);
        });

    },
  },
  beforeMount() {
      this.getDataUser()
  }
}
</script>
<style scoped>
.Profile{
  margin-top: var(--header-height); 
}
</style>