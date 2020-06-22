<template>
  <div class="row padding-top-100px">
    <div class="col-lg-6">
      <ServiceTwoLeft />
    </div>
    <div class="col-lg-6">
      <ServiceTwoRight />
    </div>
  </div>
</template>

<script>
    import ServiceTwoLeft from "./ServiceTwoLeft";
    import ServiceTwoRight from "./ServiceTwoRight";
    export default {
        name: "ServiceTwo",
      components: {ServiceTwoRight, ServiceTwoLeft}
    }
</script>

<style scoped>

</style>
