<template>
    <div class="header-top-action">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-sm-6">
            <HeaderTopBarLeft />
          </div>
          <div class="col-lg-6 col-sm-6">
            <HeaderTopBarRight />
          </div>
        </div>
      </div>
    </div>
</template>

<script>
    import HeaderTopBarLeft from "./HeaderTopBarLeft";
    import HeaderTopBarRight from "./HeaderTopBarRight";
    export default {
      name: "HeaderTopBar",
      components: {
        HeaderTopBarRight,
        HeaderTopBarLeft
      }
    }
</script>

<style scoped>

</style>
