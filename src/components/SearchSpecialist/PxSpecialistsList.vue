<template>
  <div class="SearchSpecialist">

    <div class="List--Container">
      <PxSelect style="margin-right: 20px" title="Distrito" :elements="district"></PxSelect>
      <PxSelect style="margin-right: 20px" title="Especialidad" :elements="specialism"></PxSelect>

      <px-button class="List--Button" :color="buttonColor">
        Buscar
      </px-button>
    </div>
    <div class="List--Line"></div>

    <div v-for="(i, index) in Techs.length" :key="index">

      <px-tech-list :TechList="Techs"></px-tech-list>
    </div>

    <div class="List--Container">
      <px-button class="List--Button" :color="buttonColor"
      >Más especialistas</px-button
      >

    </div>
    <div class="List--Line"></div>
    <div class="List--Container">
      <h2 style="font-size: 40px">Opiniones</h2>
    </div>


  </div>
</template>

<script>
import PxButton from "@/components/PxButton.vue";
import PxTechList from "@/components/SearchSpecialist/PxTechList.vue";
import PxSelect from "@/components/SearchSpecialist/PxSelect";

export default {
  name: "PxList",
  components: {
    PxButton,
    PxTechList,
    PxSelect
  },
  data() {
    return {
      buttonColor: "black",
      specialism:[
        "Tecnico electronico",
        "Carpintero",
        "Electricista",
        "Zapateria nuclear"
      ],
      district:[
        "Vitarte",
        "San Juan Lurigancho",
        "Cerro Camote",
        "AAHH Olvidados por Dios"
      ],
      Techs: [
        {
          name: "Lucas Moreno",
          reviews: 4,
          img: "https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200009/91087331-icono-de-perfil-de-avatar-predeterminado-para-hombre-marcador-de-posici%C3%B3n-de-foto-gris-vector-de-ilu.jpg?ver=6",
        },
        {
          name: "Jesús Romero",
          reviews: 5,
          img: "https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200009/91087331-icono-de-perfil-de-avatar-predeterminado-para-hombre-marcador-de-posici%C3%B3n-de-foto-gris-vector-de-ilu.jpg?ver=6",
        },
        {
          name: "Emanuel Ticona",
          reviews: 3,
          img: "https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200009/91087331-icono-de-perfil-de-avatar-predeterminado-para-hombre-marcador-de-posici%C3%B3n-de-foto-gris-vector-de-ilu.jpg?ver=6",
        },



      ],
    };
  },
};
</script>

<style scoped>
.SearchSpecialist {
  width: 100vw;
  height: 172.5vh;
  padding: 10vh 10vw 5vh 10vw;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
}
.List--Title {
  font-size: 3.2rem;
  font-weight: 700;
  margin: 0;
  height: 7.5vh;
  display: flex;
  align-items: flex-end;
}
.List--Line {
  height: 1px;
  width: 100%;
  background-color: var(--soft-gray);
}
.List--Container {
  width: 100%;
  height: 15vh;
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 0;
}
</style>