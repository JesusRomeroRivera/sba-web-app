<template>
  <section class="PopUpOpinion">
    <label class="PopUpOpinion--Label" for="PopUpStars">Valora tu experiencia</label>
    <input v-model="opinion.stars" class="PopUpOpinion--Input" placeholder="Min: 0 y Max: 5" id="PopUpStars" type="number" max="5" min="0">
    <label class="PopUpOpinion--Label" for="description">Cuéntanos tu experiencia</label>
    <textarea v-model="opinion.description" class="PopUpOpinion--Input" id="description" name="descriptionOpinion" rows="8" cols="50">
    </textarea>
    <div class="PopUpOpinion--Buttons">
        <px-button class="PopUpOpinion--Button" @custom-click="this.showPopUpOpinion" :color="this.buttonColor">Cancelar</px-button>
        <px-button class="PopUpOpinion--Button" @custom-click="this.createOpinion" :color="this.buttonColor">Enviar</px-button>
    </div>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

import OpinionService from "@/services/opinions-service.js";

export default {
  name: "px-create-opinion",
  components: {
      PxButton,
  },
  data() {
    return {
      buttonColor: "black",
      opinion: {
          stars: 0,
          description: "",
      }
    };
  },
  computed:{
      allChecked(){
          return this.opinion.stars && this.opinion.description;
      }
  },
  methods: {
    registerOpinion(opinionData){
        console.log(opinionData);
        console.log(this.$store.state.userId);
        console.log(this.$store.state.informationId);
      OpinionService.create(this.$store.state.userId, this.$store.state.informationId, opinionData)
      .then((responseDetails) => {
        this.$store.state.popUpOpinion = !this.$store.state.popUpOpinion;
        console.log(responseDetails);
        })
      .catch((e) => {
        console.log(e);
      });
    },
    showPopUpOpinion(){
        this.$store.state.popUpOpinion = !this.$store.state.popUpOpinion;
    },
    createOpinion(){
        if(this.allChecked){
            this.registerOpinion(this.opinion);
        }
    }
  },
  beforeMount() {
  }
};
</script>
<style scoped>
.PopUpOpinion{
    position: fixed;
    height: 65vh;
    width: 60vw;
    top: 17.5vh;
    left: 20vw;
    border-radius: 5rem;
    background-color: white;
    padding: 10vh 7.5vw;
    box-sizing:border-box;
    display: flex;
    flex-direction: column;
    box-shadow: 0px 5px 10px -5px rgba(0,0,0,0.75);
}
.PopUpOpinion--Input {
  outline: none;
  font-size: 1.6rem;
  font-weight: 300;
  border: 0;
  width: 100%;
  margin: 1.4rem 0;
  padding: 0.4rem;
  border-bottom: 1px solid var(--soft-gray);
}
.PopUpOpinion--Label{
    font-size: 2.2rem;
}
.PopUpOpinion--Buttons{
    display: flex;
    justify-content: space-between;
}
.PopUpOpinion--Button{
    font-size: 1.5rem;
}
</style>