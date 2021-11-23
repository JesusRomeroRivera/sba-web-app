<template>
  <section class="SignUp">
    <div class="SignUp--Container">
      <h3 class="SignUp--Title">Registro</h3>
      <p class="SignUp--Register">
        ¿Ya tienes una cuenta?
        <router-link :to="{ name: 'Login' }">Iniciar Sesión</router-link>
      </p>
      <div class="Emergency--Container">
        <input
          class="SignUp--Input"
          v-model="userData.firstName"
          type="text"
          placeholder="Nombre"
        />
        <input
          class="SignUp--Input"
          v-model="userData.lastName"
          type="text"
          placeholder="Apellido"
        />
      </div>
      <br />
      <input
        class="SignUp--Input"
        v-model="userRegister.email"
        type="email"
        placeholder="E-mail"
      />
      <br />
      <input
        class="SignUp--Input"
        v-model="userRegister.password"
        type="password"
        placeholder="Contraseña"
      />
      <br />
      <div class="Emergency--Container">
        <input
          class="SignUp--Input"
          v-model="address.region"
          type="text"
          placeholder="Región"
        />
        <input
          class="SignUp--Input"
          v-model="address.province"
          type="text"
          placeholder="Provincia"
        />
        <input
          class="SignUp--Input"
          v-model="address.district"
          type="text"
          placeholder="Distrito"
        />
      </div>
      <br />
      <input
        class="SignUp--Input"
        v-model="address.fullAddress"
        type="text"
        placeholder="Dirección"
      />
      <br />
      <input
        class="SignUp--Input"
        v-model="userData.phoneNumber"
        type="number"
        placeholder="Teléfono"
      />
      <div class="Emergency--Container2">
        <input
          type="radio"
          v-model="userRegister.userType"
          id="tech"
          name="type"
          value="customer"
          checked
        />
        <label class="Radio--Text" for="tech">Cliente</label>
        <input
          type="radio"
          v-model="userRegister.userType"
          id="customer"
          name="type"
          value="tech"
        />
        <label class="Radio--Text" for="customer">Técnico</label>
      </div>
      <px-button
        @custom-click="this.insertData"
        class="SignUp--Button"
        :color="buttonBlack"
        >Iniciar</px-button
      >
      <div class="SignUp--Media">
        <p class="SignUp--Media--Text">Regístrate con:</p>
        <px-button class="SignUp--Media--Button" :color="buttonBlack"
          ><img src="@/assets/facebook.png" />Facebook</px-button
        >
        <px-button class="SignUp--Media--Button" :color="buttonBlack"
          ><img src="@/assets/google.png" />Google</px-button
        >
      </div>
    </div>
    <img class="SignUp--Img" src="@/assets/about-img.png" />
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";
import UserService from "@/services/users-service.js";
import AddressService from "@/services/address-service.js";
import CustomerService from "@/services/customers-service.js";
import TechnicianService from "@/services/technicians-service.js";

export default {
  data() {
    return {
      buttonBlack: "black",
      userRegister: {
        email: "",
        password: "",
        userType: "",
      },
      address: {
        region: "",
        province: "",
        district: "",
        fullAddress: "",
      },
      userData: {
        firstName: "",
        lastName: "",
        imageUrl:
          "https://www.aulafacil.com/uploads/perfiles/28/foto.2bd2e06d14be0fa01700d60c68fe646c.jpg",
        description: "Vacía",
        phoneNumber: "",
      },
    };
  },
  components: {
    PxButton,
  },
  computed: {
    allComplete() {
      return (
        this.userRegister.email &&
        this.userRegister.password &&
        this.address.region &&
        this.address.province &&
        this.address.district &&
        this.address.fullAddress &&
        this.userData.firstName &&
        this.userData.lastName &&
        this.userData.phoneNumber &&
        this.userRegister.userType
      );
    },
  },
  methods: {
    registerUser(userVariable) {
      UserService.create(userVariable)
        .then((response) => {
          console.log(response);
          this.$store.state.userId = response.data.id;
          AddressService.create(this.$store.state.userId, this.address)
            .then((responseDetails) => {
              console.log(responseDetails);
            })
            .catch((e) => {
              console.log(e);
          });
          if (this.userRegister.userType == "customer") {
            CustomerService.create(this.$store.state.userId, this.userData)
              .then((responseDetails) => {
                alert("Se creó el usuario");
                console.log(responseDetails);
              })
              .catch((e) => {
                console.log(e);
              });
          } else if (this.userRegister.userType == "tech") {
            TechnicianService.create(this.$store.state.userId, this.userData)
              .then((responseDetails) => {
                alert("Se creó el técnico");
                console.log(responseDetails);
              })
              .catch((e) => {
                console.log(e);
              });
          }
        })
        .catch((e) => {
          console.log(e);
        });
    },
    insertData() {
      if (this.allComplete) {
        this.registerUser(this.userRegister);
        alert("Funciona aparentemente");
      } else {
        alert("Complete todos los datos");
      }
    },
  },
};
</script>
<style scoped>
.Emergency--Container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 1rem;
}
.Emergency--Container2 {
  margin-top: 1rem;
  display: flex;
  align-items: center;
  gap: 0.2rem;
}
.Radio--Text {
  margin: 0;
  font-size: 1.4rem;
}
.SignUp {
  width: 100vw;
  height: 100vh;
  box-sizing: border-box;
  background-color: var(--off-white);
  position: absolute;
  top: 0;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
}
.SignUp--Container {
  padding: 10vh 10vw;
  display: flex;
  flex-direction: column;
}
.SignUp--Title {
  font-size: 3.6rem;
  margin: 0;
  font-weight: 700;
}
.SignUp--Register {
  font-size: 1.6rem;
  margin: 0;
  margin: 1rem 0 1.4rem 0;
}
.SignUp--Register router-link {
  color: var(--off-sky);
}
.SignUp--Button {
  margin-top: 0.8rem;
  align-self: flex-end;
}
.SignUp--Password {
  font-size: 1.6rem;
  margin: 0;
  margin: 1.4rem 0 1rem 0;
}
.SignUp--Password a {
  text-decoration: none;
  color: var(--off-sky);
}
.SignUp--Input {
  outline: none;
  font-size: 1.6rem;
  font-weight: 300;
  border: 0;
  width: 100%;
  margin: 0.8rem 0;
  padding: 0.4rem;
  border-bottom: 1px solid var(--soft-gray);
}
.SignUp--Img {
  background-color: var(--soft-gray);
  width: 50vw;
  height: 100vh;
  justify-self: flex-end;
}
.SignUp--Media--Text {
  font-size: 1.6rem;
  font-weight: 400;
}
.SignUp--Media--Button {
  margin: 0 1rem;
  padding: 1rem 1.8rem;
}
.SignUp--Media--Button img {
  margin: 0 0.8rem 0 0;
  height: 1.4rem;
}
</style>
