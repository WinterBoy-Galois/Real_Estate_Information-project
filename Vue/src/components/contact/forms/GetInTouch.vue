<template>
  <div class="user-form">
    <div class="section-heading">
      <h5 class="section__meta">
        {{stitle}}
      </h5>
      <h2 class="section__title font-size-20 font-weight-medium">
        {{title}}
      </h2>
    </div><!-- end section-heading -->
    <div class="contact-form-action mt-4">
      <form method="POST" name="contactform" action="">
        <div class="input-box">
          <div class="form-group">
            <input class="form-control" type="text" name="name" placeholder="이름을 입력해 주세요.">
            <v-icon class="input-icon" name="user"></v-icon>
          </div>
        </div>
        <div class="input-box">
          <div class="form-group">
            <input class="form-control" type="email" name="email" placeholder="이메일 주소를 입력해주세요.">
            <v-icon class="input-icon" name="mail"></v-icon>
          </div>
        </div>
        <div class="input-box">
          <div class="form-group">
            <input class="form-control" type="text" name="subject" placeholder="주제를 입력해주세요.">
            <v-icon class="input-icon" name="book"></v-icon>
          </div>
        </div>
        <div class="input-box">
          <div class="form-group">
            <textarea class="message-control form-control" name="message" placeholder="문의 내용을 입력해 주세요."></textarea>
            <v-icon class="input-icon" name="edit"></v-icon>
          </div>
        </div>
        <div class="btn-box">
          <div class="form-group text-center mb-0">
            <button class="template-btn border-0 w-100" type="submit">{{buttonText}}</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
    export default {
      name: "GetInTouch",
      props: ['stitle', 'title'],
      data() {
        return {
          buttonText: '문의하기'
        }
      }
    }
</script>

<style scoped>
  button:focus,
  textarea:focus,
  input:focus {
    box-shadow: none;
  }
</style>
