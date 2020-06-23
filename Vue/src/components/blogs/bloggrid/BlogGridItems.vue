<template>
  <div class="row" style="text-align:center">
    <div :class="'column-td-6 col-lg-'+columns" v-for="(item, index) in items" v-bind:key="index">
      <div class="card-item" id="wrapper">
        <div class="card-img-box">
          <img :src="require(`@/assets/images/${item.imgurl}`)" alt="">
        </div>
        <div style="margin-top:-40px" class="card-content">
          <h4 class="card-meta">{{index}}<v-icon class="bl-icon" name="clock"></v-icon> {{item.buildYear}}</h4>
          <h3 class="card-title"><router-link :to="`/blog-single?no=${item.no}`">{{item.aptName}}</router-link></h3>
          <ul class="list-items">
            <li class="card-dot-active"><v-icon class="bl-icon" name="user"></v-icon> in <a :href="item.no">{{item.dong}}
              <!-- 이 부분 수정 (대략 동으로 이동하게끔하는게 어떨지 싶음) -->
            </a></li>
            <li><v-icon class="bl-icon" name="circle"></v-icon> {{item.dealAmount}} ￦ </li>
          </ul>
          <router-link :to="`/blog-single?no=${item.no}`" class="template-btn btn-layout-small" force-use-infinite-wrapper="#wrapper">read more</router-link>
        </div>
      </div>
    </div>
    <infinite-loading @infinite="infiniteHandler" spinner="circles" infinite-scroll-disabled="busy"></infinite-loading>

  </div>
</template>

<script>
import http from "@/util/http-common";
import InfiniteLoading from 'vue-infinite-loading';

    export default {
      name: "BlogGridItems",
      props: ['columns'],
      data() {
        return {
          items: [
          ],
          limit: 0,
          scrollY:0,
          timer: null
        }
      },
      components:{
        InfiniteLoading
      },
      created() {
        http.get("/aptlist/"+this.limit)
        .then((data) =>{
          console.log(data.data);
          for(let i = 0; i < data.data.length; i++){
            if(!data.data[i].imgurl){
              data.data[i].imgurl = "다세대주택.jpg";
            }
            else if(data.data[i].imgurl.includes("jfif")){
              console.log(data.data[i].imgurl);
              data.data[i].imgurl = "다세대주택.jpg";
            }
            console.log(data.data[i].imgurl);
          }
          this.items = data.data;
        })
        window.addEventListener('scroll', this.handleScroll)
        // http
        // .get("/aptinfo")
        // .then(({ data }) => {
        //   console.log(data);
        //   for(let i = 0; i < data.length; i++){
        //     if(!data[i].imgurl){
        //       data[i].imgurl = "다세대주택.jpg";
        //     }
        //     console.log(data[i].imgurl);
        //   }
        //   this.items = data;
        // })
        // .catch(() => {
        //   alert("에러가 발생했습니다.");
        // });
      },
      beforeDestroy: function () {
    // 핸들러 제거하기(컴포넌트 또는 SPA의 경우 절대 잊지 말아 주세요!)
        window.removeEventListener('scroll', this.handleScroll)
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
        },
        infiniteHandler($state){
          http.get("/aptlist/" + (this.limit+10))
          .then(data => {
            setTimeout(() => {
              if(data.data.length){
                for(let i = 0; i < data.data.length; i++){
                  if(!data.data[i].imgurl){
                    data.data[i].imgurl = "다세대주택.jpg";
                  }
                  else if(data.data[i].imgurl.includes("jfif")){
                    console.log(data.data[i].imgurl);
                    data.data[i].imgurl = "다세대주택.jpg";
                  }
                }               
                this.items = this.items.concat(data.data);
                $state.loaded();
                this.limit += 10;
                if(this.items.length / 10 == 0){
                  $state.complete();
                }
                this.handleScroll();
              }else{
                $state.complete();
              }
            }, 3000)
          }).catch(error =>{
            console.error(error);
          })

        },
        handleScroll: function () {
          if (this.timer === null) {
            this.timer = setTimeout(function () {
              this.scrollY = window.scrollY
              clearTimeout(this.timer)
              this.timer = null
            }.bind(this), 200)
          }
        }       
      }
      
    }
</script>

<style scoped>

</style>
