<template>
    <main class="signup-page">
      <!--Navbar-->
      <Navbar2 />

      <!--Breadcrumb-->
      <Breadcrumb title="회원가입" />

      <section class="contact-area padding-top-140px padding-bottom-120px">
        <div class="container">
          <div class="row">
            <div class="col-lg-7 mx-auto">
              <SignUpForm />
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
    import SignUpForm from "../../components/others/account/signup/SignUpForm";
    import Footer from "../../components/common/footer/Footer";
    export default {
      name: "SignUp",
      components: {
        Footer,
        SignUpForm,
        Breadcrumb,
        Navbar2
      }
    }
</script>

<style scoped>

</style>
