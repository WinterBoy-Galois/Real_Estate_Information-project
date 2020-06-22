<template>
  <div class="sidebar-widget">
    <h3 class="widget-title" v-html="title"></h3>
    <div class="section-divider"></div>
    <div class="sidebar-posts mt-4">

      <div class="recent-item align-items-center" v-for="(item, index) in items" v-bind:key="index">
        <div class="recent-img">
          <router-link to="/blog-single">
            <img :src="require(`@/assets/images/${item.imgurl}`)"  style="max-width: 100%; height: 100%;" alt="">
          </router-link>
        </div>
        <div class="recent-post-body">
          <h3>
            <router-link :to="`/trans?no=${item.no}`" style="font-size:14px; color:black;">{{item.aptName}}</router-link>
          </h3>
          <p class="recent__meta"> ￦ {{item.dealAmount}}  {{item.dong}}</p>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
  import store from "@/store/store.js";
  import http from "@/util/http-common";

    export default {
      name: "WidgetRecentPost",
      props: ['title'],
      data() {
        return {
          recent:[],
          items: [
            // {
            //   img: require("@/assets/images/small-img1.jpg"),
            //   title: "10 Ways to Stay Healthy on a Road Trip",
            //   date: "2 Jan, 2020",
            //   author: "TechyDevs",
            //   authorUrl: "http://techydevs.com",
            // },
            // {
            //   img: require("@/assets/images/small-img2.jpg"),
            //   title: "How we tak care of our health against Virus",
            //   date: "2 Jan, 2020",
            //   author: "TechyDevs",
            //   authorUrl: "http://techydevs.com",
            // },
            // {
            //   img: require("@/assets/images/small-img3.jpg"),
            //   title: "How Scientific Is Modern Medicine Really?",
            //   date: "2 Jan, 2020",
            //   author: "TechyDevs",
            //   authorUrl: "http://techydevs.com",
            // },
            // {
            //   img: require("@/assets/images/small-img2.jpg"),
            //   title: "How Scientific Is Modern Medicine Really?",
            //   date: "2 Jan, 2020",
            //   author: "TechyDevs",
            //   authorUrl: "http://techydevs.com",
            // }
          ]
        }
      },
      created(){

        let list = store.state.recent;
        let tempList = [];
        for(let i = 0 ; i < list.length; i++){
            http
              .get("/aptinfo/"+list[i])
              .then(({ data }) => {
                console.log(data);
                for(let i = 0; i < data.length; i++){
                  if(!data[i].imgurl){
                    data[i].imgurl = "다세대주택.jpg";
                  }
                  console.log(data[i].imgurl);
                }
                tempList.push(data);
              })
              .catch(() => {
                alert("에러가 발생했습니다.");
              });
        }
        this.items = tempList;
      }
    }
</script>

<style scoped>

</style>
