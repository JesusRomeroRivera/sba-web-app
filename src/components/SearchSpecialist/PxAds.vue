<template>
  <div class="Ads">
    <h3 class="Ads--Text">
      Buscar
    </h3>

    <h3 class="Ads--Ancle Ads--Text" style="margin-left: 15px">
      especialistas
    </h3>
  </div>
</template>

<script>
export default {
  name: "PxAds",
  data() {
    return {};
  },
};
</script>

<style scoped>
.Ads {
  height: 32.5vh;
  width: 100vw;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 12.5vw;
  box-sizing: border-box;
  background-color: var(--background-gray);
  color: var(--off-white);
}
.Ads--Text {
  font-size: 5.2rem;
  font-weight: 700;
  text-align: center;
}
.Ads--Ancle {
  color: var(--off-sky);
  text-decoration: none;
}
</style>
