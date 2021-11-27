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
@media only screen and (max-width: 1024px) {
  .Contact{
      padding: 2.5vh 17.5vw;
  }
}
@media only screen and (max-width: 768px) {
  .Contact{
    padding: 2.5vh 10vw;
    height: 20vh;
  }
  .Contact--Name{
    font-size: 2.4rem;
    font-weight: 400;
    margin: 0;
  }
  .Contact--Button{
      font-size: 1.4rem;
  }
  .Contact--Photo{
    height: 17.5vh;
  }
}
@media only screen and (max-width: 480px) {
  .Contact{
    padding: 2vh 8vw;
    height: 20vh;
  }
  .Contact--Container{
    height: 20vh;
    grid-template-columns: 2fr 6fr;
    grid-template-rows: 1fr 1fr;
  }
  .Contact--Photo{
    height: 10vh;
    margin-right: 0;
  }
  .Contact--Buttons{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    font-size: 1.2rem;
    grid-column-start: 1;
    grid-column-end: 3;
  }
  .Contact--Button{
    padding: 0.6rem 1.6rem;
    font-size: 1.4rem;
    font-weight: 600;
    box-shadow: 0px 5px 10px -5px rgba(0,0,0,0.75);
  }
}
</style>