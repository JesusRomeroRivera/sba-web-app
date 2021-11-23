<template>
  <section class="Contact">
    <div class="Contact--Container">
        <img :src="userData.imageUrl" alt="" class="Contact--Photo">
        <div class="Contact--Personal">
            <h3 class="Contact--Name">{{ userData.firstName }} {{ userData.lastName }}</h3>
            <p class="Contact--District"><strong>Distrito:</strong> {{ address.region }} - {{ address.district }}</p>
            <p class="Contact--Review"> Temp vacío</p>
        </div>
        <div class="Contact--Buttons">
            <px-button
                class="Contact--Button"
                :color="buttonColor"
                >Whatsapp</px-button
            >
            <px-button
                @custom-click="this.showPopUpOpinion"
                class="Contact--Button"
                :color="buttonColor"
                >Opinión</px-button
            >
            <px-button
                @custom-click="this.showPopUpReport"
                class="Contact--Button"
                :color="buttonColor"
                >Reportar</px-button
            >
        </div>
    </div>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

import AddressService from "@/services/address-service.js";
import TechnicianService from "@/services/technicians-service.js";

export default {
  name: "px-contact",
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
      TechnicianService.getById(this.$store.state.informationId)
        .then((response) => {
          this.userData = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    getAdress(){
      AddressService.getById(this.$store.state.informationId)
        .then((response) => {
          this.address = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    showPopUpOpinion(){
        this.$store.state.popUpOpinion = !this.$store.state.popUpOpinion;
    },
    showPopUpReport(){
        this.$store.state.popUpReport = !this.$store.state.popUpReport;
    }
  },
  beforeMount() {
    this.getUserData();
    this.getAdress();
  }
};
</script>
<style scoped>
.Contact{
    padding: 2.5vh 22.5vw;
    height: 22.5vh;
}
.Contact--Container{
    display: grid;
    grid-template-columns: 1fr 2fr 1fr;
    align-items: center;
    gap: 2.5rem;
}
.Contact--Photo{
  height: 20vh;
  border-radius: 10rem;
}
.Contact--Name{
    font-size: 2.8rem;
    font-weight: 400;
    margin: 0;
}
.Contact--District{
    margin: 0;
    font-size: 1.4rem;
}
.Contact--Review{
    margin: 0;
    font-size: 1.2rem;
}
.Contact--Buttons{
    display: flex;
    flex-direction: column;
    gap: 1rem;
    font-size: 1.2rem;
}
.Contact--Button{
    padding: 0.6rem 1.2rem;
    font-size: 1.4rem;
    font-weight: 600;
    box-shadow: 0px 5px 10px -5px rgba(0,0,0,0.75);
}
</style>