<template>
  <div class="section-heading text-center">
    <h5 class="section__meta">{{stitle}}</h5>
    <h2 class="section__title font-size-30">{{title}}</h2>
    <p class="font-size-16 mt-2">
      {{desc}}
    </p>
  </div>
</template>

<script>
    export default {
      name: "AccountSectionTitle",
      props: ['stitle', 'title', 'desc'],
      data() {
        return {

        }
      }
    }
</script>

<style scoped>
  .section-heading p {
    max-width: 350px;
    margin: auto;
  }
</style>
