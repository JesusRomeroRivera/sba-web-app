<template>
  <div id="app">
    <px-header :login="false"></px-header>
  </div>
</template>

<script>
import PxHeader from "./components/PxHeader.vue";

export default {
  name: "App",
  components: {
    PxHeader,
  },
};
</script>

<style>
:root {
  --principal-font: "Poppins", sans-serif;
  --off-white: #ffffff;
  --soft-gray: #d1d1cf;
  --strong-gray: #7f7f7f;
  --off-black: #000000;
}
html {
  font-size: 62.5%;
  scroll-behavior: smooth;
  font-family: var(--principal-font);
  overflow-x: hidden;
}
body{
  padding: 0;
  margin: 0;
}
#app {
  width: 100vw;
  padding: 0;
  margin: 0;
  font-family: var(--principal-font);
  color: var(--off-black);
}
</style>
