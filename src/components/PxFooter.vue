<template>
  <footer class="Footer" :class="[this.whatHeader ? 'siSePresenta' : 'noSePresenta']">
    <div class="Footer--Container" v-if="this.whatHeader">
      <h1 class="Footer--Logo">SBA</h1>
      <div class="Footer--SocialMedia">
        <a class="Footer--IconContainer" href="">
          <img class="Footer--Icon" src="@/assets/facebook.png" alt="" />
        </a>
        <a class="Footer--IconContainer" href="">
          <img class="Footer--Icon" src="@/assets/instagram.png" alt="" />
        </a>
        <a class="Footer--IconContainer" href="">
          <img class="Footer--Icon" src="@/assets/twitter.png" alt="" />
        </a>
      </div>
      <p class="Footer--Text">SBA@gmail.com</p>
    </div>
    <div class="Footer--Rights">©2021. All rights reserved</div>
  </footer>
</template>

<script>
export default {
  name: "px-footer",
  props: ["login"],
  data() {
    return {
      buttonColor: "black",
    };
  },
  computed: {
    whatHeader() {
      return this.$route.name == "Home";
    },
  },
};
</script>

<style scoped>
.siSePresenta{
  height: 40vh;
  display: grid;
  grid-template-rows: 3fr 1fr;
}
.noSePresenta{
  height: 10vh;
  display: grid;
  grid-template-rows: 1fr;
}
.Footer {
  width: 100vw;
  box-sizing: border-box;
}
.Footer--Container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.Footer--Logo {
  font-size: 3.6rem;
  font-weight: 700;
  margin: 0;
}
.Footer--SocialMedia {
  display: flex;
  align-items: center;
  gap: 2.75rem;
  margin: 1rem 0;
}
.Footer--IconContainer {
  width: 3.6rem;
  height: 3.6rem;
  background-color: var(--background-gray);
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 1.8rem;
}
.Footer--Icon {
  height: 1.5rem;
}
.Footer--Text {
  font-size: 1.6rem;
  font-weight: 500;
}
.Footer--Rights {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  font-size: 1.6rem;
  color: var(--soft-gray);
  background-color: var(--background-gray);
}
</style>
