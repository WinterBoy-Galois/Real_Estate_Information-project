<template>
  <section class="header-menu-area header-menu-area-2 " :class="{active: navFixed}">
    <div class="header-menu-fluid">
      <div class="container ">
        <div class="main-menu-content-2">
          <div class="row align-items-center h-100">
            <div class="col-lg-3">
              <div class="logo-box">
                <router-link to="/" class="logo">
                  <img src="../../assets/images/logo2.png" alt="logo">
                </router-link>
              </div>
            </div>
            <div class="col-lg-9">
              <div class="menu-wrapper">
                <nav class="main-menu">
                  <ul>
                    <li>
                      <router-link to="/">메인페이지</router-link>
                      <!-- <ul class="dropdown-menu-item">
                        <li><router-link to="/">Home 01</router-link></li>
                        <li><router-link to="/home-2">Home 02</router-link></li>
                        <li><router-link to="/home-3">Home 03</router-link></li>
                        <li><router-link to="/home-4">Home 04</router-link></li>
                      </ul> -->
                    </li>
                    <li><router-link to="/about">소개</router-link></li>
                    <li><router-link to="/faq">Q&amp;A</router-link></li>
                    <!-- <li>
                      <router-link to="/doctors">pages</router-link>
                      <ul class="dropdown-menu-item">
                        <li><router-link to="/doctors">Our doctors</router-link></li>
                        <li><router-link to="/doctor-single">Doctor detail</router-link></li>
                        <li><router-link to="/contact">Contact us</router-link></li>
                        
                        <li><router-link to="/error">Error page</router-link></li>
                        <li><router-link to="/recover">Recover pass</router-link></li>
                      </ul>
                    </li> -->
                    <!-- <li><router-link to="/prevention">Prevention</router-link></li> -->
                    <li>
                      <router-link to="/blog-sidebar">실거래가 목록</router-link>
                      <!-- <ul class="dropdown-menu-item">
                        <li><router-link to="/blog-grid">blog grid</router-link></li>
                        <li><router-link to="/blog-sidebar">blog sidebar</router-link></li>
                        <li><router-link to="/blog-single">blog detail</router-link></li>
                      </ul> -->
                    </li>
                    <li v-if="isLogin">
                        <router-link to="/login" >로그아웃</router-link>
                        <span class="ml-1 mr-1">/</span>
                        <router-link to="/doctor-single">마이페이지</router-link>
                    </li>
                    <li v-else>
                        <router-link to="/login" >로그인</router-link>
                        <span class="ml-1 mr-1">/</span>
                        <router-link to="/sign-up">회원가입</router-link>                      
                    </li>
                  </ul>
                </nav>
                <div class="logo-right-button">
                  <!-- <ul>
                    <li><Button url="/prevention" title="Prevention" /></li>
                  </ul> -->
                  <div class="side-menu-open" v-on:click="showMenu">
                    <i class="la la-bars"></i>
                    <v-icon class="show-menu" name="menu"></v-icon>
                  </div>
                </div>

                <div v-bind:class="{active: ismenuVisible}" class="side-nav-container">
                  <div class="humburger-menu">
                    <div class="humburger-menu-lines side-menu-close" v-on:click="showMenu"></div>
                  </div>
                  <div class="side-menu-wrap">
                    <ul class="side-menu-ul">
                      <li class="sidenav__item">
                        <router-link to="/">메인페이지</router-link>
                        <!-- <span class="menu-plus-icon"  @click="showHiddenMenu"></span> -->
                        <!-- <ul class="side-sub-menu">
                          <li><router-link to="/">Home 01</router-link></li>
                          <li><router-link to="/home-2">Home 02</router-link></li>
                          <li><router-link to="/home-3">Home 03</router-link></li>
                          <li><router-link to="/home-4">Home 04</router-link></li>
                        </ul> -->
                      </li>
                      <li class="sidenav__item"><router-link to="/about">소개</router-link></li>
                      <!-- <li class="sidenav__item">
                        <router-link to="#">pages</router-link>
                        <span class="menu-plus-icon"  @click="showHiddenMenu"></span>
                        <ul class="side-sub-menu">
                          <li><router-link to="/doctors">Our doctors</router-link></li>
                          <li><router-link to="doctor-/single">Doctor detail</router-link></li>
                          <li><router-link to="/contact">Contact us</router-link></li>
                          <li><router-link to="/faq">Faqs</router-link></li>
                          <li><router-link to="/error">Error page</router-link></li>
                          <li><router-link to="/recover">Recover pass</router-link></li>
                        </ul>
                      </li> -->
                      <!-- <li class="sidenav__item"><router-link to="/prevention">Prevention</router-link></li> -->
                      <li class="sidenav__item">
                        <router-link to="/blog-sidebar">실거래가 목록</router-link>
                        <!-- <span class="menu-plus-icon"  @click="showHiddenMenu"></span>
                        <ul class="side-sub-menu">
                          <li><router-link to="/blog-grid">blog grid</router-link></li>
                          <li><router-link to="/blog-sidebar">blog sidebar</router-link></li>
                          <li><router-link to="/blog-single">blog detail</router-link></li>
                        </ul> -->
                      </li>
                      <!-- <li class="sidenav__item">
                        <router-link to="/contact">contact</router-link>
                      </li> -->
                    </ul>
                    <div class="side-btn-box">
                    <li v-if="isLogin">
                        <router-link to="/login" >로그아웃</router-link>
                        <span class="ml-1 mr-1">/</span>
                        <router-link to="/doctor-single">마이페이지</router-link>
                    </li>
                    <li v-else>
                        <router-link to="/login" >로그인</router-link>
                        <span class="ml-1 mr-1">/</span>
                        <router-link to="/sign-up">회원가입</router-link>                      
                    </li>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
  //import Button from './Button'
  import store from "@/store/store.js";


  export default {
    name: "Navbar2",
    components: {
      //Button
    },
    data() {
      return {
        ismenuVisible: false,
        navFixed: false,
        isLogin : true
      }
    },
    methods: {
      showMenu: function () {
        this.ismenuVisible = !this.ismenuVisible
      },
      showHiddenMenu: function (event) {
        event.target.classList.toggle('is-open');
      }
    },
    mounted() {
      this.isLogin = store.state.isLogin;
      window.document.onscroll = () => {
        if(window.scrollY > 25){
          this.navFixed = true;
        } else {
          this.navFixed = false;
        }
      }
    }
  }
</script>

<style scoped>
  .logo-right-button .side-menu-open svg {
    color: #ffffff;
  }
</style>
