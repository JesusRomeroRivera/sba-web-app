<template>
  <section class="UserProfile">
    <h3 class="UserProfile--Title">Perfil</h3>
    <div class="UserProfile--Container">
      <div class="UserProfile--PhotoContainer">
          <img v-if="!this.editProfile" :src="this.userData.imageUrl" alt="" class="UserProfile--Img">
          <input v-if="this.editProfile" v-model="userData.imageUrl" type="text">
      </div>
      <div class="UserProfile--Data">
        <p class="UserProfile--Text">Nombre y apellidos:</p>
        <p v-if="!this.editProfile" class="UserProfile--DataText">{{ this.userData.firstName }} {{ this.userData.lastName }}</p>
        <input v-if="this.editProfile" v-model="userData.firstName" class="UserProfile--DataText" type="text">
        <input v-if="this.editProfile" v-model="userData.lastName" class="UserProfile--DataText" type="text">
        <p class="UserProfile--Text">Correo electrónico:</p>
        <p v-if="!this.editProfile" class="UserProfile--DataText">{{ this.profileData.email }}</p>
        <input v-if="this.editProfile" v-model="profileData.email"  class="UserProfile--DataText" type="text">
        <p class="UserProfile--Text">Contraseña:</p>
        <p v-if="!this.editProfile" class="UserProfile--DataText">******</p>
        <input v-if="this.editProfile" v-model="profileData.password" class="UserProfile--DataText" type="text">
        <p class="UserProfile--Text">Número de celular:</p>
        <p v-if="!this.editProfile" class="UserProfile--DataText">{{ this.userData.phoneNumber }}</p>
        <input v-if="this.editProfile" v-model="userData.phoneNumber" class="UserProfile--DataText" type="text">
      </div>
    </div>
    <px-button @custom-click="this.toggleEdit" v-if="!this.editProfile" class="UserProfile--Button" :color="this.buttonColor">Editar</px-button>
    <px-button @custom-click="this.toggleEdit" v-if="this.editProfile" class="UserProfile--Button" :color="this.buttonColor">Guardar</px-button>
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
      editProfile: false,
      profileData: {
          email: "",
          password: "",
          userType: "",
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
    toggleEdit(){
      if(this.editProfile){
        UserService.edit(this.$store.state.userId, this.profileData)
          .then((responseDetails) => {
            console.log(responseDetails);
          })
          .catch((e) => {
            console.log(e);
          });
        CustomerService.edit(this.$store.state.userId, this.userData)
          .then((responseDetails) => {
            console.log(responseDetails);
          })
          .catch((e) => {
            console.log(e);
          });
      }
      this.editProfile = !this.editProfile;
    },
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
    height: 72.5vh;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    background-color: white;
}
.UserProfile--Img{
    height: 25vh;
    border-radius: 3.4rem;
}
.UserProfile--Container{
    display: grid;
    grid-template-columns: 1fr 1fr;
}
.UserProfile--Title{
    font-size: 3.2rem;
    font-weight: 700;
    margin: 0;
    margin-bottom: 1rem;
}
.UserProfile--Button{
  align-self: flex-end;
  cursor: pointer;
}
.UserProfile--Text{
  font-size: 1.6rem;
  margin: 0;
  margin-bottom: 1rem;
  font-weight: 400;
}
.UserProfile--DataText{
  font-size: 1.4rem;
  border-bottom: 2px solid black;
  margin: 0;
  margin-bottom: 1rem;
  font-weight: 400;
}
.UserProfile--PhotoContainer{
  display: flex;
  justify-content: center;
  align-items: center;
  height: 40vh;
}
@media only screen and (max-width: 1024px) {
  .UserProfile{
      padding: 2.5vh 15vw;
  }
}
@media only screen and (max-width: 768px) {
  .UserProfile{
      padding: 2.5vh 8vw;
  }
}
@media only screen and (max-width: 480px) {
  .UserProfile--Container{
      grid-template-columns: 1fr;
      grid-template-rows: 25vh 1fr;
  }
  .UserProfile--PhotoContainer{
      align-items: flex-start;
  }
}
</style>