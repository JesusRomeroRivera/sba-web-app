<template>
  <section class="SignUp">
    <div class="SignUp--Container">
      <h3 class="SignUp--Title">Registro</h3>
      <p class="SignUp--Register">
        ¿Ya tienes una cuenta?
        <router-link :to="{ name: 'Login' }">Iniciar Sesión</router-link>
      </p>
      <input class="SignUp--Input" type="text" placeholder="Nombre" />
      <br />
      <input class="SignUp--Input" type="email" placeholder="E-mail" />
      <br />
      <input class="SignUp--Input" type="password" placeholder="Contraseña" />
      <br />
      <input class="SignUp--Input" type="number" placeholder="Teléfono" />
      <br />
      <input class="SignUp--Input" type="text" placeholder="Distrito" />
      <px-button
        @custom-click="this.popUp"
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

export default {
  data() {
    return {
      buttonBlack: "black",
    };
  },
  components: {
    PxButton,
  },
  methods: {
    popUp() {
      alert("Registrado satisfactoriamente");
    },
  },
};
</script>
<style scoped>
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
  padding: 12.5vh 10vw;
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
