<template>
  <div class="user-form">
    <AccountSectionTitle style="white-space:pre-line;" stitle="Login Account" title="로그인" desc="등록된 계정을 통해 로그인 해 주세요.
    계정이 없다면 회원가입을 통해 계정 생성 후 
    로그인을 해 주시기 바랍니다." />

    <div class="contact-form-action mt-4">
      <form v-on:submit.prevent>
        <!-- <SignInUpWay /> -->

        <div class="row">

          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="email" name="email" v-model="email" placeholder="이메일 주소를 입력해 주세요.">
                <v-icon class="input-icon" name="mail"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="password" name="text" v-model="password" placeholder="비밀번호를 입력해 주세요.">
                <v-icon class="input-icon" name="lock"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="form-group">
              <div class="custom-checkbox mr-0 d-flex align-items-center justify-content-between">
                <div>
                  <input type="checkbox" id="chb1">
                  <label for="chb1" class="mb-0">로그인 유지하기</label>
                </div>
                <div>
                  <router-link to="/recover" class="text-color-2 font-weight-medium ">비밀번호를 잊으셨나요?</router-link>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="btn-box">
              <div class="form-group text-center mb-0">
                <button class="template-btn border-0 w-100" type="button" @click="loginCheck">로그인</button>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
    //import SignInUpWay from "../SignInUpWay";
    import AccountSectionTitle from "../AccountSectionTitle";
    import store from "@/store/store.js";

    export default {
      name: "LoginForm",
      data: function(){
        return {
          email:"",
          password:""
        };
      },
      components: {
        AccountSectionTitle,
        //SignInUpWay
      },
      methods:{
        loginCheck() {
          store.dispatch('login', { email: this.email, password: this.password, url: '/home-3' });
        
          // http
          //   .post(`/login`,{
          //     email: this.email,
          //     password: this.password
          //   })
          //   .then(({data}) => {
          //     if(data === "success")
          //       this.$router.push("/");
          //     else
          //       alert("회원정보와 일치하지 않습니다. 이메일과 비밀번호를 다시 입력해주세요.");
          //   })
          //   .catch(() => {
          //     alert("오류가 발생했습니다.");
          //     // -> error 페이지 이동
          //   });
        }
      }
    }
</script>

<style scoped>
  input:focus,
  textarea:focus,
  button:focus {
    outline: none;
    box-shadow: none;
  }
  .custom-checkbox input[type=checkbox]:not(:checked) + label:after, .custom-checkbox input[type=checkbox]:checked + label:after {
    content: 'x';
    font-weight: 300;
    top: -1px;
    left: 5px;
    font-size: 17px;
  }
</style>
