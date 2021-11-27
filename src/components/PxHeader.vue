<template>
  <header class="Header">
    <div class="Header--Home" v-if="this.whatHeader">
      <h1 class="Header--Title">SBA</h1>
      <div class="Header--List">
        <a class="Header--List--Ancle" href="#inicio">Inicio</a>
        <a class="Header--List--Ancle" href="#nosotros">Nosotros</a>
        <a class="Header--List--Ancle" href="#servicios">Servicios</a>
        <router-link class="Header--List--Ancle" :to="{ name: 'SignUp' }"
          >Regístrate</router-link
        >
        <router-link class="Header--List--Ancle" :to="{ name: 'Login' }"
          >Inicio Sesión</router-link
        >
      </div>
    </div>
    <div class="navSmall" v-if="this.whatHeader">
      <div @click="navToggle" class="menu-btn">
        <div class="menu-btn__burger"></div>
      </div>
      <div v-if="navAppears" class="theNav">
        <a class="Nav--Small--Item" href="#inicio">Inicio</a>
        <a class="Nav--Small--Item" href="#nosotros">Nosotros</a>
        <a class="Nav--Small--Item" href="#servicios">Servicios</a>
        <router-link class="Nav--Small--Item" :to="{ name: 'SignUp' }"
          >Regístrate</router-link
        >
        <router-link class="Nav--Small--Item" :to="{ name: 'Login' }"
          >Iniciar Sesión</router-link
        >
      </div>
    </div>
    <div class="Header--Initial" v-if="!this.whatHeader">
      <h1 class="Header--Title">SBA</h1>
      <div class="Header--List">
        <router-link class="Header--List--Ancle" :to="{ name: 'Initial' }"
          >Inicio</router-link
        >
        <a class="Header--List--Ancle" href="#servicios">Servicios</a>
        <router-link class="Header--List--Ancle" :to="{ name: 'Profile' }"
          >Mi perfil</router-link
        >
        <a class="Header--List--Ancle" @click="goHome">Cerrar sesión</a>
      </div>
    </div>
    <div class="navSmall" v-if="!this.whatHeader">
      <div @click="navToggle" class="menu-btn">
        <div class="menu-btn__burger"></div>
      </div>
      <div v-if="navAppears" class="theNav2">
        <router-link class="Nav--Small--Item" :to="{ name: 'Initial' }"
          >Inicio</router-link
        >
        <a class="Nav--Small--Item" href="#servicios">Servicios</a>
        <router-link class="Nav--Small--Item" :to="{ name: 'Profile' }"
          >Mi perfil</router-link
        >
        <a class="Nav--Small--Item" @click="goHome">Cerrar sesión</a>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: "px-header",
  props: ["login"],
  data() {
    return {
      buttonColor: "black",
      navAppears: false,
    };
  },
  computed: {
    whatHeader() {
      return this.$route.name == "Home";
    },
  },
  methods: {
    goHome() {
      this.$store.state.userId = 0;
      this.$router.push({
        path: "/",
      });
    },
    navToggle() {
      const menuBtn = document.querySelector(".menu-btn");
      this.navAppears = !this.navAppears;
      if (!this.menuOpen) {
        menuBtn.classList.add("open");
        this.menuOpen = true;
      } else {
        menuBtn.classList.remove("open");
        this.menuOpen = false;
      }
    },
  },
};
</script>

<style scoped>
.Header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  box-sizing: border-box;
}
.Header--Home,
.Header--Initial {
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: var(--off-white);
  height: var(--header-height);
  padding: 0 8vw;
  background-color: var(--background-gray);
  box-sizing: border-box;
}
.Header--Title {
  font-weight: 600;
  font-size: 4rem;
  margin: 0;
}
.Header--List {
  width: 50vw;
  display: flex;
  justify-content: space-between;
  margin: 0;
  padding: 0;
}
.Header--List--Ancle {
  text-decoration: none;
  color: var(--off-white);
  font-family: var(--principal-font);
  font-size: 1.8rem;
  font-weight: 500;
}
@media only screen and (max-width: 1024px) {
  .Header--List {
    width: 62.5vw;
  }
}
@media only screen and (max-width: 768px) {
  .Header--List {
    display: none;
  }
  .inOff {
    justify-content: center !important;
    align-items: center !important;
    margin: 0 !important;
  }
  .navSmall {
    display: block;
    position: absolute;
    top: 3.2rem;
    right: 8vw;
  }
  .menu-btn {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 30px;
    height: 30px;
    cursor: pointer;
    transition: all 0.5s ease-in-out;
    margin-left: 2rem;
    /* border: 3px solid #fff; */
  }
  .menu-btn__burger {
    width: 3rem;
    height: 0.3rem;
    background: white;
    border-radius: 0.3rem;
    box-shadow: 0 2px 0.3rem rgba(255, 101, 47, 0.2);
    transition: all 0.5s ease-in-out;
  }
  .menu-btn__burger::before,
  .menu-btn__burger::after {
    content: "";
    position: absolute;
    width: 3rem;
    height: 0.3rem;
    background-color: white;
    border-radius: 0.3rem;
    box-shadow: 0 2px 0.3rem rgba(255, 101, 47, 0.2);
    transition: all 0.5s ease-in-out;
  }
  .menu-btn__burger::before {
    transform: translateY(-10px);
  }
  .menu-btn__burger::after {
    transform: translateY(10px);
  }
  /* ANIMATION */
  .menu-btn .open .menu-btn__burger {
    transform: translateX(50px);
    background: transparent;
    box-shadow: none;
  }
  .menu-btn .open .menu-btn__burger::before {
    transform: rotate(45deg) translate(-35px, 35px);
  }
  .menu-btn .open .menu-btn__burger::after {
    transform: rotate(-45deg) translate(-35px, -35px);
  }
  .theNav {
    width: 100vw;
    position: fixed;
    top: var(--header-height);
    height: 32.5vh;
    left: 0;
    background-color: white;
    gap: 1.2rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .theNav2 {
    width: 100vw;
    position: fixed;
    top: var(--header-height);
    height: 25vh;
    left: 0;
    background-color: white;
    gap: 1.2rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .itemNav {
    padding: 0.3rem 0;
  }
  .Nav--Small--Item{
    text-decoration: none;
    color: var(--off-black);
    font-family: var(--principal-font);
    font-size: 1.8rem;
    font-weight: 500;
  }
}
@media only screen and (max-width: 480px) {
  .Nav--Small--Item{
    font-size: 1.6rem;
  }
}
</style>
