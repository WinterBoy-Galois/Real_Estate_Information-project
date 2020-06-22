<template>
  <main class="blogsingle-page">
    <!-- Navbar -->
    <Navbar2 />

    <!--Breadcrumb-->
    <Breadcrumb title="Blog Single" />

    <section class="blog-area padding-top-140px padding-bottom-120px">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <BlogSingleContent 
              :no="item.no"
              :dong="item.dong"
              :aptName="item.aptName"
              :dealAmount="item.dealAmount"
              :buildYear="item.buildYear"
              :dealYear="item.dealYear"
              :dealMonth="item.dealMonth"
              :dealDay="item.dealDay"
              :area="item.area"
              :floor="item.floor"
              :jibun="item.jibun"
              :type="item.type"
              :imgurl="item.imgurl"        
            />
          </div>
          <div class="col-lg-4">
            <BlogSidebar/>
          </div>
        </div>
      </div>
    </section>

    <!--Footer-->
    <Footer />

  </main>
</template>

<script>
    import BlogSidebar from "../../components/blogs/sidebar/BlogSidebar";
    import BlogSingleContent from "../../components/blogs/blogsingle/BlogSingleContent";
    import Navbar2 from "../../components/common/Navbar2";
    import Breadcrumb from "../../components/common/Breadcrumb";
    import Footer from "../../components/common/footer/Footer";
    import http from "@/util/http-common";
    import store from "@/store/store.js";

    export default {
      name: "BlogSingle",
      components: {Footer, Breadcrumb, Navbar2, BlogSingleContent, BlogSidebar},
      data : function(){
        return {
          item:{}
        };
      },
      created(){
        http.get(`/aptinfo/${this.$route.query.no}`).then(({ data }) => {
          this.item = data;
          console.dir("blog single: " + data);
          let urlno = `${this.$route.query.no}`
          store.dispatch('saveNum', { no : urlno });
        });
      }
    }
</script>

<style scoped>

</style>
