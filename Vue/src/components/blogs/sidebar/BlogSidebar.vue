<template>
  <div class="sidebar">

    <WidgetSearch title="검색" @aptFind="methodCall"/>

    <!-- <WidgetCategories title="Category" /> -->

    <WidgetRecentPost title="최근 본 항목" />

    <!-- <WidgetTags title="Tags" /> -->

    <WidgetSocialFollow title="Follow & Connect" />

  </div>
</template>

<script>
    import WidgetSearch from "./WidgetSearch";
    //import WidgetCategories from "./WidgetCategories";
    import WidgetRecentPost from "./WidgetRecentPost";
    //import WidgetTags from "./WidgetTags";
    import WidgetSocialFollow from "./WidgetSocialFollow";
    export default {
      name: "BlogSidebar",
      components: {
        WidgetSocialFollow,
        //WidgetTags,
        WidgetRecentPost,
        //WidgetCategories,
        WidgetSearch
      },
      methods:{
        methodCall(message){
          this.$emit('aptFind', message);
        }
      }
    }
</script>

<style scoped>

</style>
