<template>
  <ul class="social-links mt-4">
    <li class="font-weight-medium text-color mr-2">{{title}}</li>
    <li><a href="#"><font-awesome-icon :icon="['fab', 'facebook-f']" /></a></li>
    <li><a href="#"><font-awesome-icon :icon="['fab', 'twitter']" /></a></li>
    <li><a href="#"><font-awesome-icon :icon="['fab', 'instagram']" /></a></li>
    <li><a href="#"><font-awesome-icon :icon="['fab', 'linkedin-in']" /></a></li>
  </ul>
</template>

<script>
    export default {
      name: "BlogSingleShare",
      props: ['title'],
      data() {
        return {

        }
      }
    }
</script>

<style scoped>

</style>
