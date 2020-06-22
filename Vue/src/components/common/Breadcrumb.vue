<template>
  <section class="breadcrumb-area">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="breadcrumb-content text-center">
            <div class="section-heading">
              <h2 class="section__title">{{title}}</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="breadcrumb-list">
      <ul class="list-items">
        <!-- <li class="active__list-item"><a href="index.html">메인페이지</a></li> -->
        <li>{{title}}</li>
      </ul>
    </div>
  </section>
</template>

<script>
    export default {
      name: "Breadcrumb",
      props: ['title']
    }
</script>

<style scoped>

</style>
