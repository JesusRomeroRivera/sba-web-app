<template>
  <div class="About">
    <div class="About--Container">
      <h3 class="About--Title">Nosotros</h3>
      <p class="About--Text">
        Somos el grupo MINKA que surge con la finalidad de cubrir las
        necesidades de las personas mediante el uso de la tecnología y
        comunicación móvil.
        <br /><br />
        Misión: Ofrecer una propuesta innovadora mediante el uso de la
        tecnología brindando bienestar económico y mejorando la calidad de vida
        de las familias del Perú.
        <br /><br />
        Visión: Ser la plataforma número uno en la contratación de técnicos
        especializados en servicios en casa en Sudamérica.
      </p>
    </div>
    <div class="About--Img"></div>
  </div>
</template>

<script>
export default {
  name: "PxAbout",
  data() {
    return {};
  },
};
</script>

<style scoped>
.About {
  height: 87.5vh;
  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;
  padding: 5vh 12.5vw;
  box-sizing: border-box;
}
.About--Container {
  padding: 0 2.5vw 0 0;
}
.About--Container .About--Title {
  font-size: 4.8rem;
  font-weight: 700;
  margin: 0;
}
.About--Container .About--Text {
  font-size: 1.6rem;
  font-weight: 500;
}
.About--Img {
  justify-self: center;
  background-color: var(--soft-gray);
  height: 80%;
  width: 30vw;
}
</style>
