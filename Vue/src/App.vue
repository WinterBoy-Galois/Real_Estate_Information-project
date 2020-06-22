<template>
  <div id="app">
    <router-view></router-view>
    <ScrollTop />
  </div>
</template>

<script>
import ScrollTop from "./components/others/layouts/ScrollTop";

export default {
  name: "app",
  components: {
    ScrollTop
  },
  data() {
    return {};
  },
  methods: {}
};
</script>

<style>
</style>
