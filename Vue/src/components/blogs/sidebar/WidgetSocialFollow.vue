<template>
  <div class="sidebar-widget">
    <h3 class="widget-title" v-html="title"></h3>
    <div class="section-divider"></div>
    <ul class="social-links mt-4">
      <li><a href="#"><font-awesome-icon :icon="['fab', 'facebook-f']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'twitter']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'instagram']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'dribbble']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'behance']" /></a></li>
    </ul>
  </div>
</template>

<script>
    export default {
      name: "WidgetSocialFollow",
      props: ['title']
    }
</script>

<style scoped>

</style>
