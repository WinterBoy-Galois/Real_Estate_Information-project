<template>
  <div class="row">
    <div class="col-lg-6">
      <AboutFiveLeft />
    </div>
    <div class="col-lg-6">
      <AboutFiveRight />
    </div>
  </div>
</template>

<script>
    import AboutFiveLeft from "./AboutFiveLeft";
    import AboutFiveRight from "./AboutFiveRight";
    export default {
      name: "AboutFive",
      components: {AboutFiveRight, AboutFiveLeft}
    }
</script>

<style scoped>

</style>
