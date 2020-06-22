<template>
  <section class="slider-area banner-area-2 text-center">
    <div class="single-slide-item banner-item-3">

<!--      <div id="particles-bg-2"></div>-->
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <div class="banner-content">
              <div class="section-heading">
                <h2 class="section__title">{{title}}</h2>
              </div>
            </div>
          </div>
        </div>

        <!-- Fun Facts -->
        <FunFacts />

      </div>

    </div>
  </section>
</template>

<script>
    import FunFacts from "../../others/funfact/FunFacts";
    export default {
      name: "BannerTwo",
      components: {
        FunFacts
      },
      data() {
        return {
          title: "아파트 가격 변동 사항"
        }
      }
    }
</script>

<style scoped>

</style>
