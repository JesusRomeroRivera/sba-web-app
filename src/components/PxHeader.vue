<template>
  <header class="Header">
    <h1 class="Header--Title">SBA</h1>
    <div class="Header--List">
        <ul>
            <li><a href="">Inicio</a></li>
            <li><a href="">Nosotros</a></li>
            <li><a href="">Servicios</a></li>
            <li><a href="">Regístrate</a></li>
            <li><a href="">Iniciar Sesión</a></li>
        </ul>
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
.Header{
  height: 12.5vh;
  background-color: #343434;
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: var(--off-white);
  padding: 0 8vw;
}
.Header--Title{
  font-weight: 600;
  font-size: 4rem;
  margin: 0;
}
.Header--List{
  width: 50vw;
}
.Header--List ul{
  display: flex;
  justify-content: space-between;
  margin: 0;
  padding: 0;
}
.Header--List li{
  list-style: none;
}
.Header--List a{
  text-decoration: none;
  color: var(--off-white);
  font-family: var(--principal-font);
  font-size: 1.8rem;
  font-weight: 500;
}
</style>
