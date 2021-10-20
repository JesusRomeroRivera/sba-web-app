<template>
  <section class="TechProfile">
    TECNICOOOOOOOO
    <px-button>Guardar</px-button>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

import AddressService from "@/services/address-service.js";
import TechnicianService from "@/services/technicians-service.js";

export default {
  name: "px-tech-profile",
  components: {
      PxButton,
  },
  data() {
    return {
      buttonColor: "black",
      userData: {
        firstName: "",
        lastName: "",
        imageUrl: "",
        description: "",
        phoneNumber: "",
      },
      address: {
        region: "",
        province: "",
        district: "",
        fullAddress: "",
      },
    };
  },
  methods: {
    getUserData(){
      TechnicianService.getById(this.$store.state.userId)
        .then((response) => {
          this.userData = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    getAdress(){
      AddressService.getById(this.$store.state.userId)
        .then((response) => {
          this.address = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    showPopUpOpinion(){
        this.$store.state.popUpOpinion = !this.$store.state.popUpOpinion;
    }
  },
  beforeMount() {
    this.getUserData();
    this.getAdress();
  }
};
</script>
<style scoped>
.TechProfile{
    padding: 2.5vh 22.5vw;
    height: 22.5vh;
}
<style>