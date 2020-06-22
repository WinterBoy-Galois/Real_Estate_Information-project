<template>
  <div class="row">
    <div :class="'column-td-6 col-lg-'+columns" v-for="(item, index) in items" v-bind:key="index">
      <div class="card-item">
        <div class="card-img-box">
          <img :src="require(`@/assets/images/${item.imgurl}`)" alt="">
        </div>
        <div style="margin-top:-40px" class="card-content">
          <h4 class="card-meta"><v-icon class="bl-icon" name="clock"></v-icon> {{item.buildYear}}</h4>
          <h3 class="card-title"><router-link :to="`/blog-single?no=${item.no}`">{{item.aptName}}</router-link></h3>
          <ul class="list-items">
            <li class="card-dot-active"><v-icon class="bl-icon" name="user"></v-icon> in <a :href="item.no">{{item.dong}}
              <!-- 이 부분 수정 (대략 동으로 이동하게끔하는게 어떨지 싶음) -->
            </a></li>
            <li><v-icon class="bl-icon" name="circle"></v-icon> {{item.dealAmount}} ￦ </li>
          </ul>
          <router-link :to="`/blog-single?no=${item.no}`" class="template-btn btn-layout-small">read more</router-link>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
import http from "@/util/http-common";

    export default {
      name: "BlogGridItems",
      props: ['columns'],
      data() {
        return {
          items: [
            // {
            //   img: require("@/assets/images/img1.jpg"),
            //   title: "How we can tak care of our health against Virus",
            //   time: "4 min read",
            //   data: "Jan 8, 2019",
            //   author: "TechyDevs",
            //   authorUrl: "http://techydevs.com",
            // }
          ]
        }
      },
      created() {
        http
        .get("/aptinfo")
        .then(({ data }) => {
          console.log(data);
          for(let i = 0; i < data.length; i++){
            if(!data[i].imgurl){
              data[i].imgurl = "다세대주택.jpg";
            }
            console.log(data[i].imgurl);
          }
          this.items = data;
        })
        .catch(() => {
          alert("에러가 발생했습니다.");
        });
      },
      methods:{
        dongList(message){
          console.log(message);
            http
            .get("/search/DONG/"+message)
            .then(({ data }) => {
              console.log(data);
              for(let i = 0; i < data.length; i++){
                if(!data[i].imgurl){
                  data[i].imgurl = "다세대주택.jpg";
                }
                console.log(data[i].imgurl);
              }
              this.items = data;
            })
            .catch(() => {
              alert("에러가 발생했습니다.");
            });
        },
        aptList(message){
          //alert("apt들어옴");
          console.log(message);
            http
            .get("/search/APTNAME/"+message)
            .then(({ data }) => {
              console.log(data);
              for(let i = 0; i < data.length; i++){
                if(!data[i].imgurl){
                  data[i].imgurl = "다세대주택.jpg";
                }
                console.log(data[i].imgurl);
              }
              this.items = data;
            })
            .catch(() => {
              alert("에러가 발생했습니다.");
            });
        }
      }
      
    }
</script>

<style scoped>

</style>
