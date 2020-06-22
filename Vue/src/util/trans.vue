<script>
export default {
    name : 'trans',
    created(){
        //alert(this.$route.query.no);
        this.$router.push('blog-single?no='+this.$route.query.no)
    }
}
</script>