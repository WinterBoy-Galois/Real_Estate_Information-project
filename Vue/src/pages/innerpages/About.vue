<template>
    <main class="about">
      <!-- Header Menu -->
      <Navbar2 />

      <!-- Breadcrumb -->
      <Breadcrumb title="소개" />

      <!-- About -->
      <section class="about-area about5 before-after-none padding-top-140px padding-bottom-120px">
        <div class="container">
          <AboutFive />
          <div class="row padding-top-50px align-items-center">
            <AboutOne />
          </div>
        </div>
      </section>

      <!-- Service -->
      <!-- <section class="service-area section-bg section--padding text-center">
        <div class="container">
          <div class="row">
            <SectionTitle stitle="Virus Symptoms" title="Coronavirus Symptoms" />
          </div>
          <ServiceOne />
        </div>
      </section> -->

      <!-- Doctors -->
      <section class="team-area section--padding">
        <div class="container">
          <div class="row text-center">
            <SectionTitle stitle="Developer" title="개발자 소개" />
          </div>
          <Doctor />
        </div>
      </section>

      <!-- Footer -->
      <Footer />

    </main>
</template>

<script>
    import Navbar2 from "../../components/common/Navbar2";
    import Breadcrumb from "../../components/common/Breadcrumb";
    import AboutFive from "../../components/about/about5/AboutFive";
    import AboutOne from "../../components/about/about1/AboutOne";
    // import ServiceOne from "../../components/service/service1/ServiceOne";
    import SectionTitle from "../../components/common/SectionTitle";
    import Doctor from "../../components/doctor/Doctor";
    import Footer from "../../components/common/footer/Footer";
    export default {
      name: "About",
      components: {
        Footer,
        Doctor,
        SectionTitle,
        // ServiceOne,
        AboutOne,
        AboutFive,
        Breadcrumb,
        Navbar2
      }
    }
</script>

<style scoped>
  .about5 {
    z-index: 7;
  }
</style>
