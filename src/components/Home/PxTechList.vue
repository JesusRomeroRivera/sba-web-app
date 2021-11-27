<template>
  <div class="TechList">
    <article v-for="Tech in computedObj" :key="Tech.name" class="Technician">
      <img :src="Tech.imageUrl" class="Technician--Photo" />
      <h3 class="Technician--Fullname">{{ Tech.firstName }} {{ Tech.lastName }}</h3>
      <p class="Technician--Score">Reviews: {{ Tech.reviews }}</p>
    </article>
  </div>
</template>

<script>
export default {
  name: "PxTechList",
  props: ["TechList"],
  data() {
    return {
      windowWidth: 0,
      limit: 0
    };
  },
  watch: {
    windowWidth(newWidth) {
      if(newWidth > 768){
        this.limit = 3;
      } else if (newWidth > 480){
        this.limit = 2;
      } else {
        this.limit = 1;
      }
    }
  },
  computed:{
    computedObj(){
      return this.limit ? this.TechList.slice(0,this.limit) : this.TechList
    }
  },
  mounted() {
    this.$nextTick(() => {
      window.addEventListener('resize', () => {
        this.windowWidth = window.innerWidth
      });
    })
  },
};
</script>

<style scoped>
.TechList {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  width: 100%;
  height: 40vh;
  padding: 0;
  box-sizing: border-box;
}
.Technician {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.Technician--Photo {
  width: 70%;
  border-radius: 2.5rem;
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
@media only screen and (max-width: 1024px) {
  .TechList{
    height: 35vh;
    padding: 1vh 2vw;
  }
}
@media only screen and (max-width: 768px) {
  .TechList {
    grid-template-columns: repeat(2, 1fr);
    padding: 0;
  }
  .Technician--Fullname {
    font-size: 2.2rem;
  }
  .Technician {
    height: auto;
  }
}
@media only screen and (max-width: 480px) {
  .TechList {
    grid-template-columns: repeat(1, 1fr);
    padding: 0 2vw;
  }
  .Technician--Photo {
    width: 55%;
  }
}
</style>
