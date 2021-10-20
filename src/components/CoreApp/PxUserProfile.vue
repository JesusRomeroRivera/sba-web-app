<template>
  <section class="UserProfile">
      <div class="UserProfile--Container">
        <h3 class="UserProfile--Title">Perfil</h3>
        <div class="UserProfile--PhotoContainer">
            <img :src="this.userData.imageUrl" alt="" class="UserProfile--Img">
            <input  type="text">
        </div>
        <div class="UserProfile--Data">
            <p class="UserProfile--Text">{{ this.userData.firstName }} {{ this.userData.lastName }}</p>
            <p class="UserProfile--Text">{{ this.profileData.email }}</p>
            <p class="UserProfile--Text">{{ this.profileData.password }}</p>
            <p class="UserProfile--Text">{{ this.userData.phoneNumber }}</p>
        </div>
        <px-button>Guardar</px-button>
      </div>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

import UserService from "@/services/users-service.js";
import AddressService from "@/services/address-service.js";
import CustomerService from "@/services/customers-service.js";

export default {
  name: "px-user-profile",
  components: {
      PxButton,
  },
  data() {
    return {
      buttonColor: "black",
      profileData: {
          email: "",
          password: "",
      },
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
         UserService.getById(this.$store.state.userId)
        .then((response) => {
          this.profileData = response.data;
        })
        .catch((e) => {
          console.log(e);
        });  
      },
    getCustomerData(){
      CustomerService.getById(this.$store.state.userId)
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
    this.getCustomerData();
    this.getAdress();
  }
};
</script>
<style scoped>
.UserProfile{
    padding: 2.5vh 22.5vw;
    height: 22.5vh;
}
.UserProfile--Img{
    height: 20vh;
}
.UserProfile--Container{
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: 5rem 1fr;
}
.UserProfile--Title{
    grid-column-start: 1;
    grid-column-end: 3;
    font-size: 1.6rem;
    font-weight: 600;
}
</style>