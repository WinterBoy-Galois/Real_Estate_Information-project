<template>
  <div class="footer-widget">
    <h3 class="widget-title">
      {{title}}
    </h3>
    <div class="section-divider"></div>
    <ul class="list-items">
      <li><span class="mr-1 font-weight-medium text-color">Address:</span>{{address}}</li>
      <li><span class="mr-1 font-weight-medium text-color">Email:</span><a v-bind:href="'mailto:'+email">{{email}}</a></li>
      <li><span class="mr-1 font-weight-medium text-color">Phone:</span><a v-bind:href="'tel:'+number">{{number}}</a></li>
      
    </ul>
  </div>
</template>

<script>
    export default {
      name: "FooterWidget4",
      data() {
        return {
          title: 'Contact Us',
          address: '서울 강남구 테헤란로 212',
          email: 'HappyHouse@happyhouse.com',
          number: '+82 2-3429-5114'
        }
      }
    }
</script>

<style scoped>

</style>
