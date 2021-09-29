<template>
  <div id="app">
    <px-header />
    <router-view />
    <px-footer />
  </div>
</template>

<style>
:root {
  --principal-font: "Poppins", serif;
  --off-white: #ffffff;
  --soft-gray: #d1d1cf;
  --strong-gray: #7f7f7f;
  --background-gray: #343434;
  --off-black: #000000;
  --off-sky: #87ceeb;
  --header-height: 12.5vh;
}
html {
  font-size: 62.5%;
  scroll-behavior: smooth;
  font-family: var(--principal-font);
  overflow-x: hidden;
}
body {
  margin: 0;
  padding: 0;
}
#app {
  font-family: var(--principal-font);
}
</style>
<script>
import PxHeader from "@/components/PxHeader.vue";
import PxFooter from "@/components/PxFooter.vue";

export default {
  components: {
    PxHeader,
    PxFooter,
  },
};
</script>
