<template>
      <div class="row mt-5 align-items-center">
        <div class="col-lg-6">
          <AboutOneLeft/>
        </div>
        <div class="col-lg-6">
          <AboutOneRight/>
        </div>
      </div>
</template>

<script>
  import AboutOneLeft from "./AboutOneLeft";
  import AboutOneRight from "./AboutOneRight";


    export default {
      name: "AboutOne",
      components: {
        AboutOneLeft,
        AboutOneRight
      }
    }
</script>

<style scoped>

</style>
