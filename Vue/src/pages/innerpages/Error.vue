<template>

  <main class="error-page">
    <!--Navbar-->
    <Navbar2 />

    <!-- Breadcrumb -->
    <Breadcrumb title="404 Page" />

    <!-- Error -->
    <section class="error-area padding-top-40px padding-bottom-100px text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <ErrorContent />
          </div>
        </div>
      </div>
    </section>

    <!--Footer-->
    <Footer />
  </main>

</template>

<script>
    import ErrorContent from "../../components/others/error/ErrorContent";
    import Navbar2 from "../../components/common/Navbar2";
    import Breadcrumb from "../../components/common/Breadcrumb";
    import Footer from "../../components/common/footer/Footer";
    export default {
     name: "Error",
      components: {
        Footer,
        Breadcrumb,
        Navbar2,
        ErrorContent
      }
    }
</script>

<style scoped>

</style>
