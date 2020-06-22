<template>
  <go-top><v-icon name="chevron-up"></v-icon></go-top>
</template>

<script>
  import GoTop from '@inotom/vue-go-top';

    export default {
      name: "ScrollTop",
      components: {
        GoTop
      },
      data() {
        return {

        }
      },
      methods: {
        scrollToTop() {
          window.scrollTo(0,0);
        }
      }
    }
</script>

<style scoped>
  .vue-go-top {
    right: 0 !important;
    bottom: 50px !important;
    background-image: none !important;
     background-color: #fff !important;
    font-size: 24px;
    color: #7f8897 !important;
    z-index: 9999;
    width: 50px !important;
    height: 45px !important;
    line-height: 43px;
    -webkit-border-radius: 30px 0 0 30px !important;
    -moz-border-radius: 30px 0 0 30px !important;
    border-radius: 30px 0 0 30px !important;
    text-align: center;
    cursor: pointer;
    -webkit-box-shadow: 0 10px 40px rgba(14,16,48,0.06) !important;
    -moz-box-shadow: 0 10px 40px rgba(14,16,48,0.06) !important;
    box-shadow: 0 10px 40px rgba(14,16,48,0.06) !important;
    border: 1px solid rgba(127,136,151,0.3) !important;
    border-right: 0 !important;
    padding-left: 4px !important;
    -webkit-transition: all .3s;
    -moz-transition: all .3s;
    -ms-transition: all .3s;
    -o-transition: all .3s;
    transition: all .3s;
  }
  .vue-go-top .vue-go-top__content svg {
    left: 10px;
    position: absolute;
    top: 11px;
  }
  .vue-go-top:hover {
    color: #fff !important;
    background: #3caaf7 !important;
  }
  :focus,
  a:focus {
    outline: none !important;
  }
</style>
