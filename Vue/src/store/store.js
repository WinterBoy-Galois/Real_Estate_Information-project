import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

import http from "@/util/http-common";
import router from "@/routes.js";

export default new Vuex.Store({
  state: {
    isLogin: false,
    userInfo: {
    },
    houseNum : 0,
    recent : []
  },
  mutations: { 
    mutateIsLogin(state, isLogin){
      state.isLogin = isLogin
      console.log(7);
    },
    mutateUserInfo(state, userInfo){
      state.userInfo = userInfo
    },
    saveHouseNum(state, no){
      state.houseNum = Number(no)
    },
    addRecent(state, no){
      if(state.recent.length == 5){
        for(var i = 1; i < state.recent.length; i++){
          state.recent[i-1] = state.recent[i];
        }
        state.recent[4] = no;
      }
      else{
        state.recent.push(no);
      }
    }
  },
  actions: {
    login(context, {email, password, url}) {
      http
        .post("/login", {
          email: email,
          password: password
        })
        .then(({ data }) => {
          console.log(data);
          context.commit('mutateIsLogin', true);
          context.commit('mutateUserInfo', data);
          router.push(url)
        })
        .catch((error) => {
          if (error.response.status == '404') {
            alert("아이디 또는 비밀번호가 올바르지 않습니다.");
          } else {
             alert('로그인 처리시 에러가 발생했습니다.');
          }
          console.log(error.config);
        });
    },
    logout(context, {url}){
      http
        .post("/logout")
        .then(( data ) => {
          console.log(data);
          context.commit('mutateIsLogin', false)
          context.commit('mutateUserInfo', {})
          router.push(url)
        })
        .catch((error) => {
          alert('로그아웃 처리시 에러가 발생했습니다.');
          console.log(error.config);
        });
    },
    saveNum(context, {no}){
      console.log("store- no : " + no);
      context.commit('saveHouseNum', no);
      context.commit('addRecent', no);
      
    }
  }
});
