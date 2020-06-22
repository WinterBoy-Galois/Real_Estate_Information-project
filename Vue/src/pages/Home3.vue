<template>
  <main class="home3">
    <Navbar2 />

    <!-- Banner -->
    <BannerTwo />

    <!-- Service : Symptoms-->
    <section class="service-area section-padding">
      <div class="container">
        <div class="row text-center">
          <SectionTitle stitle="Step for finding a house" title="집을 구하기 위한 순서" />
        </div>
        <ServiceThree />
      </div>
    </section>

    <!-- How it work -->
    <section class="hiw-area section--padding section-bg text-center">
      <div class="container">
       <div class="row text-center">
         <SectionTitle stitle="Check List" title="실물 확인시 꼭 확인해야 할 목록" />
       </div>
         <img src="../assets/images/9tips.png">
        <!-- <HowItWordTwo /> -->
      </div>
    </section>

    <!-- Service Two: How to be safe -->
    <section class="service-area service2 section-bg section--padding">
      <div class="container">
        <div class="row text-center">
          <SectionTitle stitle="Useful Tip" title="알아두면 좋은 팁" />
        </div>
        <ServiceTwo />
      </div>
    </section>

    <!--Footer-->
    <Footer />

  </main>
</template>

<script>
    import Navbar2 from "../components/common/Navbar2";
    import BannerTwo from "../components/banners/banner2/BannerTwo";
    import SectionTitle from "../components/common/SectionTitle";
    import ServiceThree from "../components/service/service3/ServiceThree";
    import ServiceTwo from "../components/service/service2/ServiceTwo";
    import Footer from "../components/common/footer/Footer";
    export default {
      name: "Home3",
      components: {
        Footer,
        ServiceTwo,
        ServiceThree,
        SectionTitle,
        BannerTwo,
        Navbar2
      }
    }
</script>

<style scoped>
  .hiw-area .section-heading {
    max-width: 600px;
    margin: auto;
  }
  .map-area .section-heading {
    max-width: 700px;
    margin: auto;
  }
  .blog-area .section-heading {
    max-width: 400px;
    margin: auto;
  }
  .service2 .section-heading {
    max-width: 500px;
    margin: auto;
  }
  .about5 {
    z-index: 6;
  }
</style>
