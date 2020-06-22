<template>
  <ul class="tag-list">
    <li class="font-weight-medium text-color mr-2">{{title}}</li>
    <a href="#" class="rounded-radius" > #{{item.floor}} </a> 
    <a href="#" class="rounded-radius" > #{{item.area}} </a> 
    <a href="#" class="rounded-radius" > #{{item.dealAmount}} </a>
  </ul>
</template>

<script>
    import http from "@/util/http-common";
    import store from "@/store/store.js";

    export default {
      name: "BlogSingleTags",
      props: ['title'],
      data() {
        return {
          item: {}
        }
      },
      created(){
        http.get(`/aptinfo/`+ store.state.houseNum).then(({ data }) => {
          console.log(data.floor);
          if(data.floor >= 10)
           data.floor = "고층(10층↑)"
          else
           data.floor = "저층(10층↓)"

          if(data.area >= 100)
           data.area = "넓은 평수"
          else
           data.area = "좁은 평수"

          if(data.dealAmount >= 100000)
           data.dealAmount = "고가(10억↑)"
          else
           data.dealAmount = "저가(10억↓)"

          this.item = data;
          console.dir(data);
        });
      }
    }
</script>

<style scoped>

</style>
