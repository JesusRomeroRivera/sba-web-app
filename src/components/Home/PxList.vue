<template>
  <div class="List">
    <h5 class="List--Title">Carpintería</h5>
    <px-tech-list :TechList="carpinterTech"></px-tech-list>
    <div class="List--Line"></div>
    <h5 class="List--Title">Pintura</h5>
    <px-tech-list :TechList="pinturaTech"></px-tech-list>
    <div class="List--Line"></div>
    <h5 class="List--Title">Cerrajería</h5>
    <px-tech-list :TechList="cerrajeriaTech"></px-tech-list>
    <div class="List--Line"></div>
    <div class="List--Container">
      <px-button class="List--Button" :color="buttonColor"
        >Más especialidades</px-button
      >
    </div>
  </div>
</template>

<script>
import PxButton from "@/components/PxButton.vue";
import PxTechList from "@/components/Home/PxTechList.vue";

import TechnicianService from "@/services/technicians-service.js";

export default {
  name: "PxList",
  components: {
    PxButton,
    PxTechList,
  },
  data() {
    return {
      buttonColor: "black",
      technicians: [],
      carpinterTech:[],
      pinturaTech: [],
      cerrajeriaTech: [],
    };
  },
  methods: {
    getDataTechnicians() {
      TechnicianService.getAll()
        .then((response) => {
          this.technicians = response.data;
          this.carpinterTech.push(this.technicians[0]);
          this.carpinterTech.push(this.technicians[3]);
          this.carpinterTech.push(this.technicians[7]); 
          this.pinturaTech.push(this.technicians[1]);
          this.pinturaTech.push(this.technicians[5]);
          this.pinturaTech.push(this.technicians[2]); 
          this.cerrajeriaTech.push(this.technicians[4]);
          this.cerrajeriaTech.push(this.technicians[8]);
          this.cerrajeriaTech.push(this.technicians[6]); 
        })
        .catch((e) => {
          console.log(e);
        });
    },
  },
  beforeMount() {
    this.getDataTechnicians();
    this.getDataSpecialty();
  },
};
</script>

<style scoped>
.List {
  width: 100vw;
  height: 220vh;
  padding: 10vh 10vw 5vh 10vw;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
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
}
@media only screen and (max-width: 1024px) {
  .List {
    height: 155vh;
    padding: 7.5vh 7.5vw 5vh 7.5vw;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
  }
}
@media only screen and (max-width: 768px) {
  .List {
    height: 180vh;
  }
  .List--Title {
    font-size: 2.8rem;
  }
}
@media only screen and (max-width: 580px) {
  .List {
    height: 150vh;
  }
}
@media only screen and (max-width: 480px) {
  .List {
    height: 180vh;
  }
}
@media only screen and (max-width: 400px) {
  .List {
    height: 140vh;
  }
}
</style>
