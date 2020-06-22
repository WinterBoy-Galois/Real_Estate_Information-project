<template>
    <div class="row mt-5">

      <div class="col-lg-4 column-td-6" v-for="(list, index) in lists" v-bind:key="index">
        <div class="card-item" >
          <div class="card-img-box">
            <img v-bind:src="list.img" alt="Blog">
          </div>
          <div class="card-content">
            <h4 class="card-meta"><v-icon class="bl-icon" name="clock"></v-icon> {{list.time}}</h4>
            <h3 class="card-title">
              <router-link to="/blog-single">{{list.title}}</router-link>
            </h3>
            <ul class="list-items">
              <li class="card-dot-active"><v-icon class="bl-icon" name="user"></v-icon> By <a v-bind:href="list.authorUrl"> {{list.author}}
              </a></li>
              <li><v-icon class="bl-icon" name="calendar"></v-icon> {{list.date}}</li>
            </ul>
            <router-link to="/blog-single" class="template-btn btn-layout-small">read more</router-link>
          </div>
        </div>
      </div>

    </div>
</template>

<script>
    export default {
      name: "BlogFeaturedList",
      data() {
        return {
          lists:[
            {
              img: require('@/assets/images/img1.jpg'),
              title: 'How we can take care of our health against Virus',
              time: '4 min read',
              date: 'Jan 8, 2019',
              author: 'TechyDevs',
              authorUrl: 'http://techydevs.com'
            },
            {
              img: require('@/assets/images/img2.jpg'),
              title: '10 Ways to Stay Healthy on a Road Trip',
              time: '4 min read',
              date: 'Jan 8, 2019',
              author: 'TechyDevs',
              authorUrl: 'http://techydevs.com'
            },
            {
              img: require('@/assets/images/img3.jpg'),
              title: 'How Scientific Is Modern Medicine Really?',
              time: '4 min read',
              date: 'Jan 18, 2019',
              author: 'TechyDevs',
              authorUrl: 'http://techydevs.com'
            }
          ]
        }
      }
    }
</script>

<style scoped>

</style>
