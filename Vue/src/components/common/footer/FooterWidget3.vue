<template>
  <div class="footer-widget">
    <h3 class="widget-title">
      {{title}}
    </h3>
    <div class="section-divider"></div>
    <ul class="list-items">
      <li v-for="(link, index) in links" v-bind:key="index"><a v-bind:href="link.url">{{link.list}}</a></li>
    </ul>
  </div>
</template>

<script>
    export default {
      name: "FooterWidget3",
      data() {
        return {
          title: 'Links',
          links: [
            {
              list: '집을 구하기 위한 순서',
              url: '#'
            },
            {
              list: '실물 확인 체크리스트',
              url: '#'
            },
            {
              list: '부동산 방문시 알아두면 좋은 팁',
              url: '#'
            },
            {
              list: '꼭 알아야 할 부동산 용어 정리',
              url: '#'
            }
          ]
        }
      }
    }
</script>

<style scoped>

</style>
