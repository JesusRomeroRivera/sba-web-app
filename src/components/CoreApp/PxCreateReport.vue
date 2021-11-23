<template>
  <section class="PopUpReport">
    <label class="PopUpReport--Label" for="description">Cuéntanos qué ocurrió y ayúdanos a mejorar la plataforma</label>
    <textarea v-model="report.description" class="PopUpReport--Input" id="description" name="descriptionReport" rows="8" cols="50">
    </textarea>
    <div class="PopUpReport--Buttons">
        <px-button class="PopUpReport--Button" @custom-click="this.showPopUpReport" :color="this.buttonColor">Cancelar</px-button>
        <px-button class="PopUpReport--Button" @custom-click="this.createReport" :color="this.buttonColor">Enviar</px-button>
    </div>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

import ReportService from "@/services/reports-service.js";

export default {
  name: "px-create-report",
  components: {
      PxButton,
  },
  data() {
    return {
      buttonColor: "black",
      report: {
          description: "",
      }
    };
  },
  computed:{
      allChecked(){
          return this.report.description;
      }
  },
  methods: {
    registerReport(reportData){
        console.log(reportData);
        console.log(this.$store.state.userId);
        console.log(this.$store.state.informationId);
      ReportService.create(this.$store.state.userId, this.$store.state.informationId, reportData)
      .then((responseDetails) => {
        this.$store.state.popUpReport = !this.$store.state.popUpReport;
        console.log(responseDetails);
        })
      .catch((e) => {
        console.log(e);
      });
    },
    showPopUpReport(){
        this.$store.state.popUpReport = !this.$store.state.popUpReport;
    },
    createReport(){
        if(this.allChecked){
            this.registerReport(this.report);
        }
    }
  },
  beforeMount() {
  }
};
</script>
<style scoped>
.PopUpReport{
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
.PopUpReport--Input {
  outline: none;
  font-size: 1.6rem;
  font-weight: 300;
  border: 0;
  width: 100%;
  margin: 1.4rem 0;
  padding: 0.4rem;
  border-bottom: 1px solid var(--soft-gray);
}
.PopUpReport--Label{
    font-size: 2.2rem;
}
.PopUpReport--Buttons{
    display: flex;
    justify-content: space-between;
}
.PopUpReport--Button{
    font-size: 1.5rem;
}
</style>