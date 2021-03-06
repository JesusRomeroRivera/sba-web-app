import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/Login",
    name: "Login",
    component: () => import("../views/Login.vue"),
  },
  {
    path: "/SignUp",
    name: "SignUp",
    component: () => import("../views/SignUp.vue"),
  },
  {
    path: "/Initial",
    name: "Initial",
    component: () => import("../views/Initial.vue"),
  },
  {
    path: "/Information",
    name: "Information",
    component: () => import("../views/Information.vue"),
  },
  {
    path: "/Profile",
    name: "Profile",
    component: () => import("../views/Profile.vue"),
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
