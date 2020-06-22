<template>
  <div class="header-top-content">
    <ul class="list-items">
      <li><a href="#"><span class="la"><v-icon name="phone"></v-icon></span> {{number}}</a></li>
      <li><a href="#"><span class="la"><v-icon name="mail"></v-icon></span> {{email}}</a></li>
    </ul>
  </div>
</template>

<script>
    export default {
      name: "HeaderTopBarLeft",
      data() {
        return {
          number: '(123) 123-456',
          email: 'costar@example.com'
        }
      }
    }
</script>

<style scoped>
  .header-top-content ul li a svg {
    width: 16px;
    margin-top: -2px;
  }
  .header-top-content ul li span {
    display: inline-block;
  }
</style>
