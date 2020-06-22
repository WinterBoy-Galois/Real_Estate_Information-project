<template>
  <div class="section-content-box pl-5">
    <SectionTitle stitle="About HappyHouse" title="편리함을 제공하기 위해 개발된 Happy House" />
    <h4 class="widget-title pt-4 pb-3">
      HappyHouse는 이러한 서비스 입니다
    </h4>
    <div class="section-description">
      <p class="section__desc mb-2">
        이사를 하고자 할 동네에서 원하는 주택을 찾아낼 목적으로
매매, 전/월세, 아파트/연립 다세대별 거래정보,
주변 업종(상가) 정보, 주변 환경(대기 오염이나 녹지 등) 정보 등을 조회하고
내집 마련을 위한 다양한 정보를 제공합니다

      </p>
      <p class="section__desc">
        
      </p>
    </div>
    <div class="btn-box">
      <router-link to="/about" class="template-btn">{{buttonText}}</router-link>
    </div>
  </div>
</template>

<script>
    import SectionTitle from "../../common/SectionTitle";
    export default {
      name: "AboutFiveRight",
      components: {
        SectionTitle
      },
      data() {
        return {
          buttonText: 'Read more'
        }
      }
    }
</script>

<style scoped>

</style>
