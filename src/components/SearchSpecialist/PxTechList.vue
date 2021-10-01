<template>
  <div class="TechList">
    <div class="TechList--Arrow">

    </div>


    <article v-for="Tech in TechList" :key="Tech.name" class="Technician">
      <img :src="Tech.img" class="Technician--Photo" />
      <h3 class="Technician--Fullname">{{ Tech.name }}</h3>
      <p class="Technician--Score">Reviews</p>
      <div v-for="(i, index) in Tech.reviews" :key="index" >
        <span style="display: inline-block">🌟</span>
      </div>
    </article>
    <div class="TechList--Arrow">

    </div>
  </div>
</template>

<script>
export default {
  name: "PxTechList",
  props: ["TechList"],
  data() {
    return {};
  },
};
</script>

<style scoped>
.TechList {
  display: grid;
  grid-template-columns: 5vw repeat(3, 1fr) 5vw;
  width: 100%;
  height: 40vh;
  padding: 0 2.5vw;
  box-sizing: border-box;
}
.TechList--Arrow {
  display: flex;
  justify-content: center;
  align-items: center;
}

.TechList--Arrow img {
  width: 1.6rem;
  cursor: pointer;
}
.Technician {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.Technician--Photo {
  width: 70%;
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
