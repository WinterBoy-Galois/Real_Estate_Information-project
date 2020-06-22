<template>
  <div class="row mt-5">
    <div class="col-lg-7">
      <Accordion />
    </div>
    <div class="col-lg-5">
      <GetInTouch stitle="get in touch" title="궁금증이 해결되지 않으셨나요?" />
    </div>
  </div>
</template>

<script>
    import Accordion from "./Accordion";
    import GetInTouch from "../../contact/forms/GetInTouch";
    export default {
        name: "Faq",
      components: {GetInTouch, Accordion}
    }
</script>

<style scoped>

</style>
