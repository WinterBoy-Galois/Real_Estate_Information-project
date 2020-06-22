<template>
  <div class="row mt-5">
    <div v-for="(doctor, index) in doctors" v-bind:key="index" class="col-lg-6">
      <div class="team-item">
        <div class="team-avatar">
          <img v-bind:src="doctor.img" alt="Doctor">
          <div class="team-social">
            <ul class="social-links">
              <li v-for="(social, index) in doctor.socials" v-bind:key="index">
                <a v-bind:href="social.url">
                  <font-awesome-icon :icon="['fab', social.icon]" />
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="team-detail">
          <h3 class="team__title">
            <router-link to="/doctor-single">
              {{doctor.name}}
            </router-link>
          </h3>
          <p class="team__meta">
            {{doctor.designation}}
          </p>
          <div class="section-block"></div>
          <p class="team__meta pt-3">
            {{doctor.content}}
          </p>
          <!-- <div class="btn-box pt-2">
            <router-link to="/doctor-single" class="template-btn">view profile</router-link>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
      name: "DoctorList",
      data() {
        return {
          doctors: [
            {
              img: require('@/assets/images/profile_comzac.png'),
              name: '이선수',
              designation: 'Main Developer',
              content: '메인 개발자 이선수입니다.',
              socials: [
                {
                  icon: 'facebook-f',
                  url: 'https://facebook.com'
                },
                {
                  icon: 'instagram',
                  url: 'https://instagram.com'
                }
              ]
            },
            {
              img: require('@/assets/images/profile_thinmeo.png'),
              name: '김현대',
              designation: 'Planner',
              content: '기획 및 디자인 김현대입니다.',
              socials: [
                {
                  icon: 'facebook-f',
                  url: 'https://facebook.com'
                },
                {
                  icon: 'instagram',
                  url: 'https://instagram.com'
                }
              ]
            },
            // {
            //   img: require('@/assets/images/team3.jpg'),
            //   name: 'Dr. alex smith',
            //   designation: 'Rehabilitation Therapy',
            //   content: 'Libero perspiciatis sequi delectus, maxime, voluptatum minima nam amet ultrices',
            //   socials: [
            //     {
            //       icon: 'facebook-f',
            //       url: 'https://facebook.com'
            //     },
            //     {
            //       icon: 'twitter',
            //       url: 'https://twitter.com'
            //     },
            //     {
            //       icon: 'linkedin-in',
            //       url: 'https://linkedin.com'
            //     },
            //     {
            //       icon: 'instagram',
            //       url: 'https://instagram.com'
            //     }
            //   ]
            // },
            // {
            //   img: require('@/assets/images/team4.jpg'),
            //   name: 'Dr. Richard Smith',
            //   designation: 'Throat Specialist',
            //   content: 'Libero perspiciatis sequi delectus, maxime, voluptatum minima nam amet ultrices',
            //   socials: [
            //     {
            //       icon: 'facebook-f',
            //       url: 'https://facebook.com'
            //     },
            //     {
            //       icon: 'twitter',
            //       url: 'https://twitter.com'
            //     },
            //     {
            //       icon: 'linkedin-in',
            //       url: 'https://linkedin.com'
            //     },
            //     {
            //       icon: 'instagram',
            //       url: 'https://instagram.com'
            //     }
            //   ]
            // }
          ]
        }
      }
    }
</script>

<style scoped>

</style>
