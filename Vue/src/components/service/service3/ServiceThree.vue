<template>
  <div class="row mt-5 align-items-center">
    <div class="col-lg-4 column-td-full">
      <div class="info-box info-box-layout-2">
        <div class="info__icon">
          <img src="@/assets/images/Tip_won_icon.svg" style="max-width: 100%; height: auto;">
        </div>
        <div class="info-box-content">
          <h3 class="info__title">1. 내집 마련 예산 세우기</h3>
          <p class="info__text">
            자신이 감당 할 수 있는 예산을 준비하여 전,월세 혹은 매매를 결정한다.
          </p>
        </div>
      </div>
      <div class="info-box info-box-layout-2">
        <div class="info__icon">
          <img src="@/assets/images/Tip_location_icon.svg" style="max-width: 100%; height: auto;">
         
        </div>
        <div class="info-box-content">
          <h3 class="info__title">2. 위치 선정</h3>
          <p class="info__text">
            교육/직장/생활등 라이프스타일과 환경을 고려하여 위치를 선정한다.
          </p>
        </div>
      </div>
      <div class="info-box info-box-layout-2 mb-0">
        <div class="info__icon">
          <img src="@/assets/images/Tip_size_icon.svg" style="max-width: 100%; height: auto;">    
        </div>
        <div class="info-box-content">
          <h3 class="info__title">3. 평수 및 주택종류 선택</h3>
          <p class="info__text">
아파트/오피스텔/빌라/원룸 등 다양한 집의
종류와 주거인수, 예산에 적당한 평수를 정한다.
          </p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 column-td-full">
      <div class="info-img">
        <img src="@/assets/images/houseTip.png" alt="Service">
      </div>
    </div>
    <div class="col-lg-4 column-td-full">
      <div class="info-box info-box-layout-2">
        <div class="info__icon">
          <img src="@/assets/images/Tip_marketcondition_icon.svg" style="max-width: 100%; height: auto;"> 
        </div>
        <div class="info-box-content">
          <h3 class="info__title">4. 시세 및 실거래가 확인</h3>
          <p class="info__text">
            이사를 가려고 하는 지역의 시세를 먼저 확인하고
매물로 나온 집을 살펴 보는 것이 필요하다.
          </p>
        </div>
      </div>
      <div class="info-box info-box-layout-2">
        <div class="info__icon">
          <img src="@/assets/images/Tip_look_icon.svg" style="max-width: 100%; height: auto;"> 
        </div>
        <div class="info-box-content">
          <h3 class="info__title">5. 실물 확인</h3>
          <p class="info__text">
            알아보는 집의 실물과 상태를 직접 확인하고 해당집에대한 소유자의 권리관계를 확인
          </p>
        </div>
      </div>
      <div class="info-box info-box-layout-2 mb-0">
        <div class="info__icon">
          <img src="@/assets/images/Tip_contact_icon.svg" style="max-width: 100%; height: auto;"> 
        </div>
        <div class="info-box-content">
          <h3 class="info__title">6. 계약</h3>
          <p class="info__text">
            1~5까지의 순서를 잘 이행했다면 이제 가장 마음에 드는 집을 계약하자
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
      name: "ServiceThree",
      data() {
        return {
          img: require('@/assets/images/corona-symptom.png')
        }
      }
    }
</script>

<style scoped>

</style>
