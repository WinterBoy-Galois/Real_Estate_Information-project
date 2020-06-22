<template>
  <div class="accordion-wrap">
    <BulmaAccordion
      :dropdown="false"
      :icon="'custom'"
      :caretAnimation="{
        duration: '.2s',
        timerFunc: 'ease-in-out'
    }"
      :slide="{
        duration: '.2s',
        timerFunc: 'ease'
    }"
    >
      <!-- The wrapper component for all the items -->
      <BulmaAccordionItem v-for="(item, index) in items" v-bind:key="index">
        <h4 slot="title">
          {{item.title}} 
          <button style="background:#fff; border:0; color:#3caaf7; float:right; margin-right:5%" v-if="userInfo.isAdmin == 'admin'" class = "btn btn-primary" @click="deleteN(item.noticeId)"> 삭제 </button>
          <span class="plus" ><v-icon name="plus"></v-icon></span>
        </h4>
        <div slot="content" class="card-body">
          {{item.content}}
        </div>
        
      </BulmaAccordionItem>
    </BulmaAccordion>
    <form style="margin-top:5%" v-if="userInfo.isAdmin == 'admin'">
        <div class="input-box">
          <div class="form-group">
            <input class="form-control" type="text" name="q" v-model="q" placeholder="질문을 입력하세요.">
          </div>
        </div>
        <div class="input-box">
          <div class="form-group">
            <input class="form-control" type="text" name="a" v-model="a" placeholder="답변을 입력하세요.">
          </div>
        </div>
        <button style="background:#3caaf7; border:0; width:20%" class="template-btn border-0 w-20" @click ="createN" > 등록 </button>
    </form>
  </div>
</template>

<script>
  import { BulmaAccordion, BulmaAccordionItem } from 'vue-bulma-accordion';
  import http from "@/util/http-common";
  import store from "@/store/store.js";

    export default {
      name: "Accordion",
      data() {
        return {
          q : "",
          a : "",
          deleteNum : 0,
          items: [
            
          ],
          userInfo : {
            isAdmin : ""
          }
        }
      },
      components: {
        BulmaAccordion,
        BulmaAccordionItem
      },
      created(){
        this.list()
      },
      mounted(){
        this.userInfo = store.state.userInfo
      },
      methods: {
        list(){
          http
            .get("/notice")
            .then(({ data }) => {
              console.log(data);
              this.items = data;
            })
            .catch(() => {
              alert("에러가 발생했습니다.");
            });             
        },
        createN(){
        http
          .post("/notice", {
            noticeId : Number(store.state.userInfo.id),
            userName : store.state.userInfo.name,
            title : this.q,
            content : this.a,
            regDt : "",
            readCount : 0
          })
          .then(({ data }) => {
            if(data === 1){
              alert("등록이 완료됐습니다.");
            }
            this.list();
          })
          .catch(() => {
            alert("에러가 발생했습니다.");
          });
        },
      deleteN(deleteNum){
        http
          .delete(`/notice/`+deleteNum)
          .then(({ data }) => {
            let msg = "삭제 처리시 문제가 발생했습니다.";
            if (data === 1) {
              msg = "삭제가 완료되었습니다.";
            }
            alert(msg);
            this.list();
          })
          .catch(() => {
            alert("삭제 처리시 에러가 발생했습니다.");
          });
      }
     }
    }
</script>

<style scoped>

</style>
