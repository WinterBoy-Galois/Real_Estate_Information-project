<template>
  <main class="faq">
    <!--Navbar-->
    <Navbar2 />

    <!--Breadcrumb-->
    <Breadcrumb title="QnA" />

    <!-- FAQ -->
    <section class="accordion-area section-padding">
      <div class="container">
        <div class="row text-center">
          <SectionTitle stitle="Looking For An Answer?" title="QnA" />
        </div>
        <Faq />

        

      </div>

    </section>

    <!-- Footer -->
    <Footer />

  </main>
</template>

<script>
    import Navbar2 from "../../components/common/Navbar2";
    import Breadcrumb from "../../components/common/Breadcrumb";
    import Faq from "../../components/others/faq/Faq";
    import SectionTitle from "../../components/common/SectionTitle";
    import Footer from "../../components/common/footer/Footer";

    export default {
      name: "FAQ",

      components: {
        Footer,
        SectionTitle,
        Faq,
        Breadcrumb,
        Navbar2
      }
    }
</script>

<style scoped>

</style>
