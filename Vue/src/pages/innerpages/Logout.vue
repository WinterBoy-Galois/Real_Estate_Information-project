
<script>
import store from "@/store/store.js";

    export default {
        name: "LogIn",
        data(){
          return {
            isLogin : false
          }
        },
        mounted(){
          store.dispatch('logout', { url: '/home-3' });
          alert("로그아웃 되셨습니다.");
        }
    }
</script>

