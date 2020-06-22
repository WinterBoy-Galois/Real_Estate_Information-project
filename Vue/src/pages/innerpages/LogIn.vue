<template>
  <main class="login-page">
    <!--Navbar-->
    <Navbar2 />

    <!--Breadcrumb-->
    <Breadcrumb title="로그인" />


    <!--Login Form-->
    <section class="contact-area padding-top-140px padding-bottom-120px">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto">
              <Logout v-if="isLogin"/>
              <LoginForm v-else />
          </div>
        </div>
      </div>
    </section>

    <!--Footer-->
    <Footer />

  </main>

</template>

<script>
    import Navbar2 from "../../components/common/Navbar2";
    import Breadcrumb from "../../components/common/Breadcrumb";
    import LoginForm from "../../components/others/account/login/LoginForm";
    import Logout from "./Logout.vue";
    import Footer from "../../components/common/footer/Footer";
    import store from "@/store/store.js";

    export default {
        name: "LogIn",
        data(){
          return {
            isLogin : false
          }
        },
        components: {Footer, LoginForm, Breadcrumb, Navbar2, Logout}
        ,
        mounted(){
          this.isLogin = store.state.isLogin
        }
    }
</script>

<style scoped>

</style>
