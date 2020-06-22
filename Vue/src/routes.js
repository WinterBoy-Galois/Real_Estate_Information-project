import Home3 from "./pages/Home3";
import About from "./pages/innerpages/About";
import FAQ from "./pages/innerpages/FAQ";
import Error from "./pages/innerpages/Error";
import BlogWithSidebar from "./pages/innerpages/BlogWithSidebar";
import BlogSingle from "./pages/innerpages/BlogSingle";
import LogIn from "./pages/innerpages/LogIn";
import SignUp from "./pages/innerpages/SignUp";
import Trans from "@/util/trans";
import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);

const routes = [
    {path:'/trans', name : 'trans', component : Trans},
    {path:'/', name : 'home', component: Home3},
    {
      path:'/home-3',
      name:'home-3', 
      component: () =>
        import(/* webpackChunkName: "about" */ "@/pages/Home3.vue")
    },
    {path:'/about', component: About},
    {path:'/faq', component: FAQ},
    {path:'/error', component: Error},
    {path:'/blog-sidebar', component: BlogWithSidebar},
    {path:'/blog-single', component: BlogSingle},
    {path:'/login', component: LogIn},
    {path:'/sign-up', component: SignUp}

]

const router = new VueRouter({
  routes
});

export default router;
