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
    <img class="About--Img" src="@/assets/about-img.png" />
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
@media only screen and (max-width: 1024px) {
  .About {
    height: 80vh;
    padding: 4vh 8vw;
    box-sizing: border-box;
  }
}
@media only screen and (max-width: 768px) {
  .About {
    height: 70vh;
    padding: 5vh 10vw;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr;
  }
  .About--Img {
    display: none;
  }
}
@media only screen and (max-width: 480px) {
  .About {
    height: auto;
    padding: 5vh 8vw;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr;
  }
  .About--Container .About--Title {
    font-size: 4rem;
  }
  .About--Container .About--Text {
    font-size: 1.5rem;
  }
}
</style>
