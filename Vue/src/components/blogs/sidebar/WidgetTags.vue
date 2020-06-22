<template>
  <div class="sidebar-widget">
    <h3 class="widget-title" v-html="title"></h3>
    <div class="section-divider"></div>
    <ul class="tag-list mt-4">
      <li v-for="(list, index) in lists" v-bind:key="index"><a href="#">{{list}}</a></li>
    </ul>
  </div>
</template>

<script>
    export default {
      name: "WidgetTags",
      props: ['title'],
      data() {
        return {
          lists: [
            "Corona",
            "Coronavirus",
            "Medical",
            "Hospital",
            "Covid-19",
            "Clinic",
            "Covid",
            "Pharmacy",
            "Covid-19 Advises",
            "Prevention",
            "Medicine",
            "Virus"
          ]
        }
      }
    }
</script>

<style scoped>
  .tag-list li {
    margin: 4px 4px 4px 2px;
  }
</style>
