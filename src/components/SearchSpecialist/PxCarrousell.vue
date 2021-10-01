<template>
  <div class="Carrousell">
    <p class="Carrousell--Text">
      Contacta técnicos especializados desde la comodidad de tu hogar
    </p>
    <px-button class="Carrousell--Button" :color="buttonColor"
      >Solicitar Servicio</px-button
    >
  </div>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

export default {
  name: "PxCarrousell",
  components: {
    PxButton,
  },
  data() {
    return {
      buttonColor: "black",
    };
  },
};
</script>

<style scoped>
.Carrousell {
  width: 100vw;
  height: 75vh;
  margin-top: var(--header-height);
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  padding: 0 12.5vw;
  box-sizing: border-box;
  background-image: url("../../assets/background.png");
  background-position: center;
  background-size: 110vw auto;
}
.Carrousell--Text {
  text-align: center;
  font-size: 5.2rem;
  font-weight: 600;
  margin: 0;
  color: var(--off-white);
}
.Carrousell--Button {
  margin-top: 3vh;
}
</style>
