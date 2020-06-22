<template>
  <div class="sidebar-widget">
    <h3 class="widget-title" v-html="title"></h3>
    <div class="section-divider"></div>
    <div class="contact-form-action mt-4">
      <form action="#">
        <div class="form-group mb-0">
          <input class="form-control pl-3" type="text" placeholder="검색어를 입력하세요" v-model="apt">
          <button class="search-btn" @click="aptName()"><v-icon name="search"></v-icon></button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
    export default {
      name: "WidgetSearch",
      props: ['title'],
      data() {
        return{
          apt:""
        }
      },
      methods:{
        aptName(){
          this.$emit('aptFind', this.apt);
        }
      }
    }
</script>

<style scoped>
  .contact-form-action .form-group .search-btn {
    transform: rotate(0);
  }
  .contact-form-action .form-group .search-btn svg {
    width: 18px;
  }
</style>
