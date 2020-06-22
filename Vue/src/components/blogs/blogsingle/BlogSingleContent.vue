<template>
  <div id="content">
    <div style="background:#ffffff" class="card-item blog-card-detail">
      <div class="card-img-box">
        <img :src="require(`@/assets/images/${imgurl}`)" alt="">
      </div>
      <div style="margin-top:-40px" class="card-content">
        <h4 class="card-meta"><v-icon class="bl-icon" name="clock"></v-icon> {{no}} </h4>
        <h3 class="card-title"><router-link to="/blog-single">{{aptName}}</router-link></h3>
        <ul class="list-items">
          <li class="card-dot-active"><v-icon class="bl-icon" name="user"></v-icon> in <a :href="no">{{dong}}</a></li>
          <li><v-icon class="bl-icon" name="calendar"></v-icon> 거래일시 : {{dealYear}}-{{dealMonth}}-{{dealDay}}</li>
        </ul>
        <p class="card-desc mb-3">
          <ul style = "font-size:15px;">
            <li> 거 래 가 : {{dealAmount}} </li>
            <li> 건축년도 : {{buildYear}} </li>
            <li> 면    적 : {{area}} </li>
            <li> 층    수 : {{floor}} </li>
            <li> 지    번 : {{jibun}} </li>
          </ul>
        </p>

        <div class="tag-items mt-4">
          <BlogSingleTags 
           title="Tags:" 
           no = ${this.$route.query.no}
           />

          <BlogSingleShare title="Share post:" />
        </div>
      </div><!-- end blog-content -->


      <!-- 주변상권정보 -->
      <div class="card-content">
        <h4 class="card-meta"><v-icon class="bl-icon" name="clock"></v-icon> {{no}} </h4>
        <h3 class="card-title"><a @click="Near" style="cursor: pointer;"> 주변 상권 정보 </a></h3>
        <ul class="list-items">
          <li class="card-dot-active"><v-icon class="bl-icon" name="user"></v-icon> in <a :href="no">{{dong}}</a></li>        </ul>
        
        <p class="card-desc mb-3" v-if= isNear >
          <ul style = "font-size:15px;">
            <li v-for="(n, index) in near" v-bind:key="index"> <br>
              <p>{{index+1}}. {{n.shopname}} [{{n.codename3}}] </p>
              {{n.address}}
            </li>
          </ul>
        </p>
      </div><!-- end blog-content -->


      <!-- 주변 환경정보 -->
      <div class="card-content">
        <h4 class="card-meta"><v-icon class="bl-icon" name="clock"></v-icon>{{no}} {{aptName}}</h4>
        <h3 class="card-title"><a @click="Info" style="cursor: pointer;"> 주변 환경 정보</a></h3>
        <ul class="list-items">
          <li class="card-dot-active"><v-icon class="bl-icon" name="user"></v-icon> in <a :href="no">{{dong}}</a></li>
          <!-- <li><v-icon class="bl-icon" name="calendar"></v-icon> {{date}}</li> -->
        </ul>
        <p class="card-desc mb-3" v-if= isInfo >
          <ul style = "font-size:15px;">
            <li v-for="(i, index) in info" v-bind:key="index"> <br>
              <p>{{index+1}}. {{i.name}} [{{i.pass}}] </p>
              {{i.address}}
            </li>
          </ul>
        </p>

      </div><!-- end blog-content -->
    </div><!-- end card-item -->


    <!-- <div class="related-post padding-top-45px">
      <h3 class="widget-title font-size-22">Related Posts</h3>
      <div class="related-post-inner mt-4">
        <DoctorRelatedPost />
      </div>
    </div> -->

    <!--Comment Lists-->
    <!-- <CommentLists /> -->

    <!--Comment Form-->
    <!-- <div class="comment-form padding-top-55px">
      <CommentForm />
    </div> -->

  </div>
</template>

<script>
    import BlogSingleTags from "./BlogSingleTags";
    import BlogSingleShare from "./BlogSingleShare";
    //import DoctorRelatedPost from "../../doctor/single/DoctorRelatedPost";
    // import CommentLists from "../../others/comment/CommentLists";
    // import CommentForm from "../../others/comment/CommentForm";
    //import ServiceOne2 from "@/components/service/service1/ServiceOneItems2";
    import http from "@/util/http-common";

    export default {
      name: "BlogSingleContent",
      components: {
        // CommentForm,
        // CommentLists,
        //DoctorRelatedPost,
        BlogSingleShare,
        BlogSingleTags,
        //ServiceOne2
      },
      props:{
          no : {type : Number},
          dong : {type:String},
          aptName : {type:String},
          dealAmount : {type:String},
          buildYear : {type:String},
          dealYear :{type:String},
          dealMonth : {type:String},
          dealDay : {type:String},
          area : {type:String},
          floor : {type:String},
          jibun : {type:String},
          type : {type:String},
          imgurl : {type:String}
      },
      data() {
        return {
          near:[],
          info:[],
          isNear:false,
          isInfo:false
        }
      },
      methods:{
        Near(){
          http.get(`/aptinfo/near/`+this.dong).then(({ data }) => {
            this.near = data;
            console.dir(data);
          });

          this.isNear = !this.isNear;
        },
        Info(){
          http.get(`/aptinfo/green/`+this.dong).then(({ data }) => {
            if(data.length == 0)
              alert("해당동은 관련정보가 없습니다.");
            else{
              this.info = data;
              this.isInfo = !this.isInfo;
            }
            console.dir(data);
          });

        }
      }
    }
</script>

<style scoped>

  .card-content {
    box-shadow: gray 3px 1px 3px 1px;
  }

  #content {
    background-color: rgba(230, 230, 231, 0.911);
  }
</style>
