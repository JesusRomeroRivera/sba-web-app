<template>
  <section class="Login">
    <div class="Login--Container">
      <h3 class="Login--Title">Iniciar Sesión</h3>
      <p class="Login--Register">
        ¿No tienes una cuenta?
        <router-link :to="{ name: 'SignUp' }">Regístrate</router-link>
      </p>
      <input
        class="Login--Input"
        v-model="userRegister.email"
        type="email"
        placeholder="E-mail"
      />
      <br />
      <input
        class="Login--Input"
        v-model="userRegister.password"
        type="password"
        placeholder="Contraseña"
      />
      <p class="Login--Password">
        ¿Olvidaste tu contraseña? <a href="">Recuperar contraseña</a>
      </p>
      <px-button
        class="Login--Button"
        @custom-click="this.insertData"
        :color="buttonBlack"
        >Iniciar</px-button
      >
    </div>
    <img class="Login--Img" src="@/assets/about-img.png" />
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";
import UserService from "@/services/users-service.js";

export default {
  data() {
    return {
      buttonBlack: "black",
      userRegister: {
        email: "",
        password: "",
        userType: "",
      },
    };
  },
  components: {
    PxButton,
  },

  computed: {
    allComplete() {
      return this.userRegister.email && this.userRegister.password;
    },
  },
  methods: {
    authUser(userVariable) {
      UserService.auth(userVariable)
        .then((response) => {
          console.log(response);
          this.$store.state.userId = response.data.id;
          this.$store.state.token = response.data.token;
          this.$store.state.type = response.data.userType;
          this.$router.push({
            path: "/Initial",
          });
        })
        .catch((e) => {
          alert("Datos incorrectos");
          console.log(e);
        });
    },
    insertData() {
      if (this.allComplete) {
        this.authUser(this.userRegister);
      } else {
        alert("Complete todos los datos");
      }
    },
  },
};
</script>
<style scoped>
.Login {
  width: 100vw;
  height: 100vh;
  box-sizing: border-box;
  background-color: var(--off-white);
  position: absolute;
  top: 0;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
}
.Login--Container {
  padding: 30vh 10vw;
  display: flex;
  flex-direction: column;
}
.Login--Title {
  font-size: 3.6rem;
  margin: 0;
  font-weight: 700;
}
.Login--Register {
  font-size: 1.6rem;
  margin: 0;
  margin: 1rem 0 1.4rem 0;
}
.Login--Register router-link {
  color: var(--off-sky);
}
.Login--Button {
  align-self: flex-end;
}
.Login--Password {
  font-size: 1.6rem;
  margin: 0;
  margin: 1.4rem 0 1rem 0;
}
.Login--Password a {
  text-decoration: none;
  color: var(--off-sky);
}
.Login--Input {
  outline: none;
  font-size: 2rem;
  font-weight: 300;
  border: 0;
  width: 100%;
  margin: 0.8rem 0;
  padding: 0.4rem;
  border-bottom: 1px solid var(--soft-gray);
}
.Login--Img {
  background-color: var(--soft-gray);
  width: 50vw;
  height: 100vh;
  justify-self: flex-end;
}

@media only screen and (max-width: 1024px) {
  .Login {
    grid-template-columns: 55vw 45vw;
  }
  .Login--Img {
    width: 45vw;
  }
}
@media only screen and (max-width: 768px) {
  .SignUp--Container {
    padding: 10vh 10vw;
  }
  .Login {
    grid-template-columns: 1fr;
  }
  .Login--Img {
    display: none
  }
}
</style>
