import Vue from 'vue'
import BootstrapVue from "bootstrap-vue/dist/bootstrap-vue.esm";
import App from './App.vue'
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';
// Bootstrap
Vue.use(BootstrapVue);

import * as VueGoogleMaps from 'vue2-google-maps'
import feather from 'vue-icon'

import router from "@/routes.js";
import store from "@/store/store.js";

// googlemap
// import GmapCluster from 'vue2-google-maps/dist/components/cluster' // replace src with dist if you have Babel issues
 
Vue.use(VueGoogleMaps, {
  load: {
    key: 'AIzaSyBQPWqfw5RJTUVBtG-d3LLe3zua9S0bvNU'
  },
});
Vue.component('gmap-cluster', VueGoogleMaps.Cluster);


import { library } from '@fortawesome/fontawesome-svg-core'
import { faReply } from '@fortawesome/free-solid-svg-icons'
import { faFacebookF, faGoogle, faTwitter, faInstagram, faDribbble, faBehance, faLinkedinIn } from '@fortawesome/free-brands-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
library.add(faFacebookF, faGoogle, faTwitter, faInstagram, faDribbble, faBehance, faLinkedinIn, faReply);

Vue.component('font-awesome-icon', FontAwesomeIcon);
Vue.config.productionTip = false;

Vue.use(feather, 'v-icon');

/* Main CSS*/
import "./assets/css/style.css";

// google map
Vue.use(VueGoogleMaps, {
  load: {
    key: 'AIzaSyAYzby4yYDVaXPmtu4jZAGR258K6IYwjIY',
  },
});

new Vue({
  el: '#app',
  render: h => h(App),
  router,
  store
});
