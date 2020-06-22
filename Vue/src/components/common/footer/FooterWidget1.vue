<template>
  <div class="footer-widget">
    <router-link to="/">
      <img v-bind:src="footerLogo" alt="footer logo" class="footer__logo">
    </router-link>
    <p class="padding-top-30px padding-bottom-20px">
      {{desc}}
    </p>
    <h3 class="widget-title font-size-16 font-weight-medium pb-3 mb-0">Connect with us</h3>
    <ul class="social-links">
      <li><a href="#"><font-awesome-icon :icon="['fab', 'facebook-f']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'twitter']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'linkedin-in']" /></a></li>
      <li><a href="#"><font-awesome-icon :icon="['fab', 'instagram']" /></a></li>
    </ul>
  </div>
</template>

<script>
    export default {
      name: "FooterWidget1",
      data() {
        return {
          footerLogo: require('@/assets/images/logo.png'),
          desc: 'HAPPYHOUSE는 집을 마련하기 위한 정보들과 연립 다세대별 거래정보, 주변 업종 정보, 주변 환경 정보 등 내집 마련을 위한 다양한 정보를 제공합니다'
        }
      }
    }
</script>

<style scoped>

</style>
