<template>
  <main class="blog-with-sidebar">
    <!--Navbar-->
    <Navbar2 />

    <!--Breadcrumb-->
    <Breadcrumb title="실거래가 목록" />

    <!--BLog-->
    <section class="blog-area padding-top-140px padding-bottom-120px">
      <div class="container">
      <div style="margin-bottom:5%; position:relative;">
        <GoogleMap @dongfind="dongMethod"/>
      </div>
        <div class="row">
          <div class="col-lg-4">
            <BlogSidebar @aptFind="aptMethod"/>
          </div>
          <div class="col-lg-8">
            <div class="blog-sidebar-wrap">
                <BlogGridItems columns="6" ref="list"/>
            </div>
            <!-- <div class="col-lg-12">
              <Pagination />
            </div> -->
          </div>
        </div>
      </div>
    </section>

    <!--Footer-->
    <Footer />

  </main>
</template>

<script>
    import Navbar2 from "../../components/common/Navbar2";
    import Breadcrumb from "../../components/common/Breadcrumb";
    import BlogSidebar from "../../components/blogs/sidebar/BlogSidebar";
    import BlogGridItems from "../../components/blogs/bloggrid/BlogGridItems";
    //import Pagination from "../../components/blogs/Pagination";
    import Footer from "../../components/common/footer/Footer";
    //import LiveMapWrap from "@/components/others/livemap/LiveMapWrap";
    import GoogleMap from "@/components/contact/maps/GoogleMap"
    export default {
      name: "BlogWithSidebar",
      components: {
        Footer,
        //Pagination,
        BlogGridItems,
        BlogSidebar,
        Breadcrumb,
        Navbar2,
        GoogleMap
        //LiveMapWrap
      },
      methods: {
        dongMethod(message){
          //alert(message + "부모");
          this.$refs.list.dongList(message)
        },
        aptMethod(message){
         //alert(message);
          this.$refs.list.aptList(message)
        }
      }
    }
</script>

<style scoped>

</style>
