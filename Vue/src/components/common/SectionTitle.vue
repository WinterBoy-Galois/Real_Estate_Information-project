<template>
  <div class="section-heading">
    <h5 class="section__meta">
      {{stitle}}
    </h5>
    <h2 class="section__title padding-bottom-20px line-height-55">
      {{title}}
    </h2>
    <div class="section-divider"></div>
  </div>
</template>

<script>
    export default {
      name: "SectionTitle",
      props: [ 'title', 'stitle' ],
      data() {
        return {

        }
      },
      methods: {

      }
    }
</script>

<style scoped>

</style>
