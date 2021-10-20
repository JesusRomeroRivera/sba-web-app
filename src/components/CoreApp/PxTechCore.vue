<template>
  <section class="TechCore">
    <div class="TechCore--Inputs">
      <input class="Filter--Input" list="districts" placeholder="Distrito" />
      <datalist id="districts">
        <option value="Lince"></option>
      </datalist>

      <input
        class="Filter--Input"
        list="specialties"
        placeholder="Especialidad"
      />
      <datalist id="specialties">
        <option
          v-for="special in specialties"
          :key="special.id"
          :value="special.name"
        ></option>
      </datalist>
      <input
        class="Filter--Input"
        v-model="nameFilter"
        type="text"
        placeholder="Nombre"
      />
      <px-button
        @custom-click="this.searchInfo"
        class="SignUp--Button"
        :color="buttonBlack"
        >Buscar</px-button
      >
    </div>
    <div class="TechCore--List">
      <article
        @click="goInformation(tech.userId)"
        class="Technician"
        v-for="tech in technicians"
        :key="tech.userId"
      >
        <img :src="tech.imageUrl" class="Technician--Photo" />
        <h3 class="Technician--Fullname">
          {{ tech.firstName }} {{ tech.lastName }}
        </h3>
        <p class="Technician--Score">Reviews: 3</p>
      </article>
    </div>
  </section>
</template>

<script>
import PxButton from "@/components/PxButton.vue";
import TechnicianService from "@/services/technicians-service.js";
import SpecialtyService from "@/services/specialties-service.js";

export default {
  name: "px-tech-core",
  components: {
    PxButton,
  },
  data() {
    return {
      buttonBlack: "black",
      technicians: [],
      allTechnicians: [],
      filterTechnicians: [],
      specialties: [],
      nameFilter: "",
    };
  },
  watch: {
    nameFilter: function () {
      this.filterTechnicians = [];
      for (let tech in this.allTechnicians) {
        if (
          this.allTechnicians[tech].firstName == this.nameFilter ||
          this.nameFilter == ""
        ) {
          this.filterTechnicians.push(this.allTechnicians[tech]);
        }
      }
      this.technicians = this.filterTechnicians;
    },
  },
  methods: {
    getDataTechnicians() {
      TechnicianService.getAll()
        .then((response) => {
          this.technicians = response.data;
          this.allTechnicians = this.technicians;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    getDataSpecialty() {
      SpecialtyService.getAll()
        .then((response) => {
          this.specialties = response.data;
        })
        .catch((e) => {
          console.log(e);
        });
    },
    goInformation(userId) {
      this.$store.state.informationId = userId;
      this.$router.push({
        path: "/Information",
      });
    },
    searchInfo() {},
  },
  beforeMount() {
    this.getDataTechnicians();
    this.getDataSpecialty();
  },
};
</script>
<style scoped>
.TechCore {
  padding: 5vh 7.5vw;
}
.TechCore--Inputs {
  display: flex;
  gap: 2.5rem;
  margin-bottom: 2rem;
}
.Filter--Input {
  outline: none;
  font-size: 1.6rem;
  font-weight: 300;
  border: 0;
  width: 100%;
  margin: 0.8rem 0;
  padding: 0.4rem;
  border-bottom: 1px solid var(--soft-gray);
}
.TechCore--List {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
}
.Technician {
  cursor: pointer;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.Technician--Photo {
  width: 70%;
  height: 30vh;
  border-radius: 4rem;
}
.Technician--Fullname {
  font-size: 2.4rem;
  font-weight: 400;
  margin: 0;
}
.Technician--Score {
  font-size: 1.6rem;
  font-weight: 300;
  margin: 0;
}
</style>
