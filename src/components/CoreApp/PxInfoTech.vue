<template>
  <section class="InfoTech">
    <div class="InfoTech--Container">
        <h3 class="InfoTech--Title">Descripción</h3>
        <p class="InfoTech--Text">{{ this.userData.description }}</p>
        <h3 class="InfoTech--Title">Especialidades</h3>
        <div class="InfoTech--Specialties">
            <p class="InfoTech--Specialty" v-for="specialty in specialties" :key="specialty.id">{{specialty.name}}</p>
        </div>
        <h3 class="InfoTech--Title">Opiniones</h3>
        <div class="InfoTech--Opinions">
            <article class="Opinion--Container" v-for="opinion in opinions" :key="opinion.id">
                <div class="Opinion--UserData">
                    <img :src="opinion.customer.imageUrl" alt="" class="Opinion--Photo">
                    <h6 class="Opinion--Name">{{opinion.customer.firstName}} {{opinion.customer.lastName}}</h6>
                    <h6 class="Opinion--Name">Stars: {{opinion.stars}}</h6>
                </div>
                <p class="Opinion--Data">{{opinion.description}}</p>
            </article>
        </div>
        <px-button
            class="InfoTech--Button"
            :color="buttonColor"
            >Ver más</px-button
        >
    </div>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";

import TechnicianService from "@/services/technicians-service.js";
import TechnicianSpecialtyService from "@/services/technicians-specialties-service.js";
import OpinionService from "@/services/opinions-service.js";

export default {
  name: "px-info-tech",
  components: {
      PxButton,
  },
  data() {
    return {
      buttonColor: "black",
      userData: {
        firstName: "",
        lastName: "",
        imageUrl: "",
        description: "",
        phoneNumber: "",
      },
      specialties: [],
      allOpinions: [],
      opinions: []
    };
  },
  methods: {
    getUserData(){
      TechnicianService.getById(this.$store.state.informationId)
        .then((response) => {
          this.userData = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    getSpecialties(){
        TechnicianSpecialtyService.getById(this.$store.state.informationId)
        .then((response) => {
          this.specialties = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    getOpinions(){
        this.opinions = [];
        OpinionService.getAll()
        .then((response) => {
          this.allOpinions = response.data;
            for(let opinion in this.allOpinions){
                if(this.allOpinions[opinion].technician.userId == this.$store.state.informationId) 
                    this.opinions.push(this.allOpinions[opinion])
            }
        })
        .catch((e) => {
          console.log(e);
        });
    }
  },
  beforeMount() {
    this.getUserData();
    this.getSpecialties();
    this.getOpinions();
  }
};
</script>
<style scoped>
.InfoTech{
    padding: 5vh 15vw 10vh 15vw;
    background-color: #eeeeee;
}
.InfoTech--Container{
    background-color: white;
    padding: 5vh 7.5vw;
}
.InfoTech--Title{
    font-size: 2.6rem;
    font-weight: 700;
    margin: 0;
}
.InfoTech--Text{
    font-size: 1.6rem;
}
.InfoTech--Specialties{
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 1.2rem;
}
.InfoTech--Specialty{
    padding: 0.3rem 0.6rem;
    border-radius: 1rem;
  font-size: 1.6rem;
  background-color: white;
  color: black;
  border: 3px solid black;
}
.InfoTech--Opinions{
    display: flex;
    flex-direction: column;
    margin: 2rem 0;
    gap: 2rem;
}
.Opinion--Container{
    padding: 1rem 2.5rem;
    box-shadow: 0px 5px 10px -5px rgba(0,0,0,0.75);
    display: flex;
    flex-direction: column;
    border-radius: 3rem;
}
.Opinion--UserData{
    padding: 0.6rem 0 1rem 0;
    display: grid;
    align-items: center;
    grid-template-columns: 5rem 1fr;
    grid-template-rows: 1fr 1fr;
}
.Opinion--Photo{
    height: 5rem;
    grid-row-start: 1;
    grid-row-end: 3;
    border-radius: 2rem;
    justify-self: center;
}
.Opinion--Name{
    font-size: 1.6rem;
    margin: 0;
    margin-left: 1rem;
    font-weight: 500;
}
.Opinion--Data{
    font-size: 1.6rem;
    border-top: 1px solid #c0c0c0;
    margin: 0;
    padding: 1rem 0 1rem 0;
}
.InfoTech--Button{
    align-self: center;
    margin: 0;
}
@media only screen and (max-width: 768px) {
  .InfoTech{
    padding: 5vh 10vw 7.5vh 10vw;
    background-color: #eeeeee;
  }
}
@media only screen and (max-width: 480px) {
  .InfoTech{
    padding: 5vh 10vw 5vh 10vw;
    background-color: #eeeeee;
  }
}
</style>