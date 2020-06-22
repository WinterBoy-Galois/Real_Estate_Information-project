<template>
  <div class="service-item pr-4">
    <h3 class="widget-title padding-bottom-15px">
      {{title}}
    </h3>
    <ul class="list-items">
      <li v-for="(list, index) in lists" v-bind:key="index">{{list.title}}</li>
    </ul>
  </div>
</template>

<script>
    export default {
      name: "AboutOneLeft",
      data() {
        return {
          title: 'Happy House 둘러보기',
          lists: [
            {
              title: 'Happy House 주요기능'
            },
            {
              title: '내집 마련을 위한 여러가지 팁 제공'
            },
            {
              title: '실물 확인시 필요한 팁 제공'
            },
            {
              title: '부동산 방문시 알아두면 좋은 팁 제공'
            },
            {
              title: '공공데이터 API를 기반으로 신뢰도 있는 정보로 각 지역별 실거래 가격을 제공'
            },
            {
              title: '상권정보, 환경정보를 제공'
            }
          ]
        }
      }
    }
</script>

<style scoped>

</style>
