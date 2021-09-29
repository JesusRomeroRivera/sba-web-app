<template>
  <header class="Header">
    <h1 class="Header--Title">SBA</h1>
    <div class="Header--List">
      <a class="Header--List--Ancle" href="#inicio">Inicio</a>
      <a class="Header--List--Ancle" href="#nosotros">Nosotros</a>
      <a class="Header--List--Ancle" href="#servicios">Servicios</a>
      <router-link class="Header--List--Ancle" :to="{ name: 'SignUp' }"
        >Regístrate</router-link
      >
      <router-link class="Header--List--Ancle" :to="{ name: 'Login' }"
        >Inicio Sesión</router-link
      >
    </div>
    <div v-if="login" class="Header--Web">
      <p>Web App</p>
    </div>
  </header>
</template>

<script>
export default {
  name: "px-header",
  props: ["login"],
  data() {
    return {
      buttonColor: "black",
    };
  },
};
</script>

<style scoped>
.Header {
  position: fixed;
  top: 0;
  left: 0;
  height: var(--header-height);
  background-color: var(--background-gray);
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: var(--off-white);
  padding: 0 8vw;
  width: 100vw;
  box-sizing: border-box;
}
.Header--Title {
  font-weight: 600;
  font-size: 4rem;
  margin: 0;
}
.Header--List {
  width: 50vw;
  display: flex;
  justify-content: space-between;
  margin: 0;
  padding: 0;
}
.Header--List--Ancle {
  text-decoration: none;
  color: var(--off-white);
  font-family: var(--principal-fo nt);
  font-size: 1.8rem;
  font-weight: 500;
}
</style>
