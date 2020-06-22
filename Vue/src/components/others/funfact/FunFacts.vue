<template>
  <div class="row mt-5">
    <div class="col-lg-3" v-for="(funfact, index) in funfacts" v-bind:key="index">
      <div v-bind:class="'counter-item counter-item-color-' + index">
        <h4 class="counter__title">
          <ICountUp
            :delay="funfact.delay"
            :endVal="funfact.endval"
            :options="{useEasing: true,
            useGrouping: true,
            separator: '',
            decimal: '',
            prefix: '',
            suffix: ''}"
          />
        </h4>
        <p class="counter__meta">
          {{funfact.desc}}
        </p>
      </div><!-- end counter-item -->
    </div><!-- end col-lg-3 -->


  </div>
</template>

<script>
  import ICountUp from 'vue-countup-v2';

    export default {
      name: "FunFacts",
      components: {
        ICountUp
      },
      data() {
        return {
          funfacts: [
            {
              delay: 0,
              endval: 171912,
              desc: '총 매물수'
            },
            {
              delay: 0,
              endval: 4433,
              desc: '새로등록된 매물'
            },
            {
              delay: 0,
              endval: 778,
              desc: '인기있는 매물'
            },
            {
              delay: 0,
              endval: 9953,
              desc: '거래완료'
            }
          ]
        }
      },
      methods: {

      }
    }
</script>

<style scoped>

</style>
