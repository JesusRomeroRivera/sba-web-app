<template>
  <div class="Contact">
    <h3 class="Contact--Title">Ofrece tus servicios</h3>
    <p class="Contact--Text">
      Aprovecha las oportunidades que SBA te ofrece, con gran espacio para tu
      publicidad y gran cantidad de usuarios. ¡Te esperamos!
    </p>
    <px-button class="Carrousell--Button" :color="buttonColor"
      >Más información</px-button
    >
  </div>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

export default {
  name: "PxContact",
  components: {
    PxButton,
  },
  data() {
    return {
      buttonColor: "white",
    };
  },
};
</script>

<style scoped>
.Contact {
  width: 100vw;
  height: 40vh;
  background: var(--background-gray);
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  padding: 0 17.5vw;
  box-sizing: border-box;
  gap: 2rem;
}
.Contact--Title {
  text-align: center;
  font-size: 4.8rem;
  font-weight: 700;
  margin: 0;
  color: var(--off-white);
}
.Contact--Text {
  text-align: center;
  font-size: 2rem;
  font-weight: 400;
  margin: 0;
  color: var(--soft-gray);
}
.Contact--Button {
  margin-top: 3vh;
}
</style>
