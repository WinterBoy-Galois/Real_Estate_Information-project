<template>
  <div class="user-form">

    <AccountSectionTitle style="white-space:pre-line;"  stitle="Build Account" title="회원가입" desc="아래 항목을 차례대로 모두 입력 후 
    가입하기 버튼을 누르시면 
    회원가입을 진행 할 수 있습니다." />

    <div class="contact-form-action mt-4">
      <form method="post">


        <div class="row">

          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="text" name="text" placeholder="이름을 입력해 주세요.">
                <v-icon class="input-icon" name="user"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="text" name="text" placeholder="성을 입력해 주세요.">
                <v-icon class="input-icon" name="user"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="email" name="email" placeholder="이메일 주소를 입력해 주세요.">
                <v-icon class="input-icon" name="mail"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="password" name="text" placeholder="비밀번호를 입력해 주세요.">
                <v-icon class="input-icon" name="lock"></v-icon>
                <span class="mt-1 font-size-14">8-15자, 숫자 또는 기호를 사용해야 합니다.</span>
              </div><!-- end form-group -->
            </div>
          </div>
          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <input class="form-control" type="password" name="text" placeholder="비밀번호를 한번 더 입력해 주세요">
                <v-icon class="input-icon" name="lock"></v-icon>
              </div><!-- end form-group -->
            </div>
          </div>

          <div class="col-lg-12">
            <div class="input-box">
              <div class="form-group">
                <div class="custom-checkbox d-block mr-0">
                  <input type="checkbox" id="chb3">
                  <label for="chb3">HAPPYHOUSE의 <a href="#" class="color-text">개인 정보 보호 정책</a>에 동의함.</label>
                </div><!-- end custom-checkbox -->
                <div class="custom-checkbox d-block mr-0">
                  <input type="checkbox" id="chb4">
                  <label for="chb4">HAPPYHOUSE의  <a href="#" class="color-text">서비스 약관</a>에 동의함.</label>
                </div><!-- end custom-checkbox -->
              </div>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="btn-box">
              <div class="form-group text-center mb-0">
                <button class="template-btn border-0 w-100" type="submit">가입하기</button>
              </div><!-- end form-group -->
            </div>
          </div>
        </div><!-- end row -->
      </form>
    </div><!-- end contact-form-action -->
  </div>
</template>

<script>
    import AccountSectionTitle from "../AccountSectionTitle";
    export default {
        name: "SignUpForm",
      components: { AccountSectionTitle}
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
