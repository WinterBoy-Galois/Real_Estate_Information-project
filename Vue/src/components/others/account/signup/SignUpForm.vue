<template>
  <div class="user-form">

    <AccountSectionTitle style="white-space:pre-line;"  stitle="Build Account" title="회원가입" desc="아래 항목을 차례대로 모두 입력 후 
    가입하기 버튼을 누르시면 
    회원가입을 진행 할 수 있습니다." />

    <div class="contact-form-action mt-4">
      <!-- <form method="post"> -->
        <div class="row">
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="text" name="text" v-model="lastname" placeholder="이름을 입력해 주세요.">
                <v-icon class="input-icon" name="user"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="text" name="text" v-model="firstname" placeholder="성을 입력해 주세요.">
                <v-icon class="input-icon" name="user"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="email" name="email" v-model="email" placeholder="이메일 주소를 입력해 주세요.">
                <v-icon class="input-icon" name="mail"></v-icon>
                <span v-if="isDup" style="color : #9999ff" class="mt-1 font-size-14">{{dupText}}</span>
                <span v-else style="color : #ff8080" class="mt-1 font-size-14">{{dupText}}</span>
                <button class="template-btn border w-10" style="margin-left:460px; margin-top:10px" type="button" @click="dupCheck">중복확인</button>

              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="password" name="text" v-model="password1" placeholder="비밀번호를 입력해 주세요.">
                <v-icon class="input-icon" name="lock"></v-icon>
                <span class="mt-1 font-size-14">8-15자, 숫자 또는 기호를 사용해야 합니다.</span>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="password" name="text" v-model="password2" placeholder="비밀번호를 한번 더 입력해 주세요">
                <v-icon class="input-icon" name="lock"></v-icon>

                <span v-if="isCorrect" style="color : #9999ff" class="mt-1 font-size-14">{{correctText}}</span>
                <span v-else style="color : #ff8080" class="mt-1 font-size-14">{{correctText}}</span>
              </div><!-- end form-group -->
            </div>
          </div>

          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <div class="custom-checkbox d-block mr-0">
                  <input type="checkbox" id="chb3" value="chb3" v-model="chb">
                  <label for="chb3">HAPPYHOUSE의 <a href="#" class="color-text">개인 정보 보호 정책</a>에 동의함.</label>
                </div><!-- end custom-checkbox -->
                <div class="custom-checkbox d-block mr-0">
                  <input type="checkbox" id="chb4" value="chb4" v-model="chb">
                  <label for="chb4">HAPPYHOUSE의  <a href="#" class="color-text">서비스 약관</a>에 동의함.</label>
                </div><!-- end custom-checkbox -->
              </div>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="btn-box">
              <div class="form-group text-center mb-0">
                <button class="template-btn border-0 w-100" type="button" @click="signup">가입하기</button>
              </div><!-- end form-group -->
            </div>
          </div>
        </div><!-- end row -->
      <!-- </form> -->
    </div><!-- end contact-form-action -->
  </div>
</template>

<script>
    import AccountSectionTitle from "../AccountSectionTitle";
    import store from "@/store/store.js";
    import http from "@/util/http-common.js";
    export default {
      name: "SignUpForm",
      data: function(){
        return {
          firstname:"",
          lastname:"",
          email:"",
          password1:"",
          password2:"",
          correctText:"",
          isCorrect: false,
          dupText:"",
          isDup: false,
          chb : []
        };
      },
      components: { AccountSectionTitle},
      watch:{
        password2: function(val1){
          if(this.password1 != val1){
            this.correctText = "비밀번호가 일치하지 않습니다";
            this.isCorrect = false;
          }
          else{
            this.correctText = "비밀번호가 일치합니다";
            this.isCorrect = true;
          }
        } 
      },
      methods:{
        signup(){
        console.log(this.firstname + this.lastname + this.email+ this.password1);
          if(this.chb.length != 2){
            alert("약관에 모두 동의해주셔야 합니다.")
          }
          else if(this.isDup == false){
            alert("이메일 중복확인을 해주세요")
          }
          else{
            store.dispatch('signup', {name: this.firstname+this.lastname, email: this.email, password: this.password1, url: '/login' });
          }
        },
        dupCheck(){
          console.log("dup");
          http
            .get("/dup/"+this.email)
            .then(({ data }) => {
              console.log(data);
              if(data.length == 0){
                alert("등록가능한 메일주소입니다.");
                this.isDup = true;
                this.dupText = "사용가능합니다.";
              }
              else{
                alert("이미 사용중인 메일주소입니다.");
                this.isDup = false;
                this.dupText = "다른 이메일을 입력해주세요";
              }
            })
            .catch(() => {
              alert("에러가 발생했습니다.");
            });
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
