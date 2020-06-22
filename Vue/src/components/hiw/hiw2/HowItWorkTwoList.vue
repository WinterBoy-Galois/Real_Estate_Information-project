<template>
  <div class="row mt-5">

    <div class="col-lg-4 column-td-6" v-for="(item, index) in items" v-bind:key="index">
      <div class="info-box info-box-layout-3">
        <div class="info__icon">
          <img :src="item.img" alt="How It Work">
        </div>
        <h3 class="info__title">{{item.title}}</h3>
        <span class="info__number">{{item.number}}</span>
      </div>
    </div>

  </div>
</template>

<script>
    export default {
      name: "HowItWorkTwoList",
      data() {
        return {
          items: [
            {
              img: require('@/assets/images/9tip_sun_moon_icon.png'),
              title: '낮과 밤을 모두 살펴보기',
              number: '01'
            },
            {
              img: require('@/assets/images/9tip_daylighting_icon.png'),
              title: '채광을 살펴보기',
              number: '02'
            },
            {
              img: require('@/assets/images/9tip_soundproof_icon.png'),
              title: '방음이 잘 되는지 살펴보기',
              number: '03'
            },
            {
              img: require('@/assets/images/9tip_noise_icon.png'),
              title: '건물 밖 소음 확인하기',
              number: '04'
            },
            {
              img: require('@/assets/images/9tip_sink_icon.png'),
              title: '수압 확인하기',
              number: '05'
            },
            {
              img: require('@/assets/images/9tip_wind_icon.png'),
              title: '외풍 확인하기',
              number: '06'
            },
            {
              img: require('@/assets/images/9tip_broken_icon.png'),
              title: '노후, 하자 확인',
              number: '07'
            },
            {
              img: require('@/assets/images/9tip_security_icon.png'),
              title: '치안 확인하기',
              number: '08'
            },
            {
              img: require('@/assets/images/9tip_direction_icon.png'),
              title: '집의 방향 확인하기',
              number: '09'
            }
          ]
        }
      }
    }
</script>

<style scoped>

</style>
