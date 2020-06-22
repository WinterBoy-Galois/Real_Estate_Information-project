<template>
  <section class="footer-area padding-top-90px">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 column-td-6">
          <FooterWidget1 />
        </div>
        <div class="col-lg-3 column-td-6">
          <FooterWidget2 />
        </div>
        <div class="col-lg-3 column-td-6">
          <FooterWidget3 />
        </div>
        <div class="col-lg-3 column-td-6">
          <FooterWidget4 />
        </div>

        <div class="col-lg-12">
          <Copyright />
        </div>
      </div>
    </div>
  </section>
</template>

<script>
    import FooterWidget1 from "./FooterWidget1";
    import FooterWidget2 from "./FooterWidget2";
    import FooterWidget3 from "./FooterWidget3";
    import FooterWidget4 from "./FooterWidget4";
    import Copyright from "./Copyright";
    export default {
        name: "Footer",
      components: {Copyright, FooterWidget4, FooterWidget3, FooterWidget2, FooterWidget1}
    }
</script>

<style scoped>

</style>
