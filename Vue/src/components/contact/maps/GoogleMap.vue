<template>
  <div class="map-container">
    <div class="form-group">
        <select style="width:25%; margin-right:2%" class="custom-select" v-model="selectedDoe" required id = "doe" @change="doe">
          <option value="도/광역시">도/광역시</option>
          <option v-bind:value="doe" v-for="(doe, index) in doeList" v-bind:key="index" >
            {{doe}}
          </option>
        </select>
        
        <select style="width:25%;  margin-right:2%" class="custom-select" v-model="selectedSi" required id = "si" @change="si">
          <option value="시/구/군">시/구/군</option>
          <option v-bind:value="si" v-for="(si, index) in siList" v-bind:key="index">
            {{si}}
          </option>
        </select>
        
        <select style="width:25%; margin-right:2%" class="custom-select" v-model="selectedDong" required id = "dong" >
          <option value="동">동</option>
          <option v-bind:value="dong" v-for="(dong, index) in dongList" v-bind:key="index">
            {{dong}}
          </option>
        </select>
        
        
        <button style="width:19%; background:#0a1b4f; border:0" type="button"  class="btn btn-primary" id="search" @click="search">검색</button>
 
    </div>

  

    <gmap-map :center="center" :zoom= this.zoom style="width: 100%; height: 500px">
      <gmap-cluster >
      <gmap-info-window :options="infoOptions" :position="infoWindowPos" :opened="infoWinOpen" @closeclick="infoWinOpen=false">
        <div style="background:#000" class="infoWindow">
          <button @click="aptNameSearch"> search </button>
        </div>
      </gmap-info-window>
        <gmap-marker v-for="(m, index) in markers"
          :position="m.position"
          :clickable="true" :draggable="true"
          @click="toggleInfoWindow(m,index)"
          :key="index"
          ></gmap-marker>
      </gmap-cluster>
    </gmap-map>
  </div>
</template>

<script>
import GmapCluster from "vue2-google-maps/dist/components/cluster";
import { gmapApi } from "vue2-google-maps";
import http from "@/util/http-common";
//import $ from 'jquery';
    export default {
      name: "GoogleMap",
      components:{
        GmapCluster
      },
      created(){
        http
        .get("/google/list")
        .then(({ data }) => {
          this.selectList = data;
          this.doeList = this.selectList['doe'];
          this.siList = this.selectList['si'];
          this.dongList = this.selectList['dong'];
          console.log(this.doeList);

        })
        .catch(() => {
          alert("리스트 불러오는 데 에러가 발생했습니다.");
        });
      },
      data() {
        return {
          zoom : 10,
          selectedDoe : "도/광역시",
          selectedSi : "시/구/군",
          selectedDong : "동",
          
          selectList : new Map(),
          doeList : [],
          siList : [],
          dongList : [],

          center: {
            lat: 37.5743822,
            lng: 126.9688505
         },
          infoWindowPos: null,
          infoWinOpen: false,
          currentMidx: null,

          infoOptions: {
            content: '',
            //optional: offset infowindow so it visually sits nicely on top of our marker
            pixelOffset: {
              width: 0,
              height: -35
            }
          },
          markers: [
            {
              position: {
                lat: 37.5743822,
                lng: 126.9688505
              },
              infoText: '<strong>Marker 1</strong>'
            }
          ],

          mapStyles: [
            {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
            {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
            {
              featureType: 'administrative.locality',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'poi',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'poi.park',
              elementType: 'geometry',
              stylers: [{color: '#263c3f'}]
            },
            {
              featureType: 'poi.park',
              elementType: 'labels.text.fill',
              stylers: [{color: '#6b9a76'}]
            },
            {
              featureType: 'road',
              elementType: 'geometry',
              stylers: [{color: '#38414e'}]
            },
            {
              featureType: 'road',
              elementType: 'geometry.stroke',
              stylers: [{color: '#212a37'}]
            },
            {
              featureType: 'road',
              elementType: 'labels.text.fill',
              stylers: [{color: '#9ca5b3'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'geometry',
              stylers: [{color: '#746855'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'geometry.stroke',
              stylers: [{color: '#1f2835'}]
            },
            {
              featureType: 'road.highway',
              elementType: 'labels.text.fill',
              stylers: [{color: '#f3d19c'}]
            },
            {
              featureType: 'transit',
              elementType: 'geometry',
              stylers: [{color: '#2f3948'}]
            },
            {
              featureType: 'transit.station',
              elementType: 'labels.text.fill',
              stylers: [{color: '#d59563'}]
            },
            {
              featureType: 'water',
              elementType: 'geometry',
              stylers: [{color: '#17263c'}]
            },
            {
              featureType: 'water',
              elementType: 'labels.text.fill',
              stylers: [{color: '#515c6d'}]
            },
            {
              featureType: 'water',
              elementType: 'labels.text.stroke',
              stylers: [{color: '#17263c'}]
            }
          ]
        }
      },
      computed: {
        google: gmapApi
      },
      methods: {
        doe(){
          //alert(this.selectedDoe);
          http
          .get(`/google/guDongList/`+this.selectedDoe)
          .then(({ data }) => {
            this.selectList = data;
            this.siList = this.selectList['si'];
            this.dongList = this.selectList['dong'];
          })
          .catch(() => {
            alert("에러가 발생했습니다.");
          });
        },
        si(){
          //alert(this.selectedSi)
          http
        .get(`/google/dongList/`+this.selectedSi)
        .then(({ data }) => {
          console.log(data);
          this.selectList = data;
          this.dongList = this.selectList['dong'];
        })
        .catch(() => {
          alert("에러가 발생했습니다.");
        });
        },
        search(){
          this.dongSearch();
           http
            .get(`/google/pos/`+this.selectedDong)
            .then(({ data }) => {
              console.log(data);
              var center = {
                  lat : Number(data[0].lat),
                  lng : Number(data[0].lng)
              }
              this.center = center;
              this.markers = [];
              for(var i = 0 ; i < data.length; i++){
                var dict = {
                  position:{
                    lat : Number(data[i].lat),
                    lng : Number(data[i].lng)
                  },
                  infoText : '<strong style ="font-size:20px" >'+ data[i].aptName +'</strong>'
                }
                
                this.markers.push(dict);
              }
              this.zoom = 16;
            })
            .catch(() => {
              alert("에러가 발생했습니다.");
            });
        },
        dongSearch(){
          //alert(this.selectedDong);
          this.$emit('dongfind', this.selectedDong);
          // http
          //   .get(`/search/DONG/`+this.selectedDong)
          //   .then(({ data }) => {
          //     console.log(data);
          //   })
          //   .catch(() => {
          //     alert("에러가 발생했습니다.");
          //   });
        },
        aptNameSearch(){ // 임시 중지
          alert("??");
          // http
          //   .get(`/search/APTNAME/`+"aptname")
          //   .then(({ data }) => {
          //     console.log(data);
          //   })
          //   .catch(() => {
          //     alert("에러가 발생했습니다.");
          //   });
        },
        toggleInfoWindow: function(marker, idx) {
          this.center = marker.position;

            this.infoWindowPos = marker.position;
            this.infoOptions.content = marker.infoText;

            //check if its the same marker that was selected if yes toggle
            if (this.currentMidx == idx) {
              this.infoWinOpen = !this.infoWinOpen;
            }
            //if different marker set infowindow to open and reset current marker index
            else {
              this.infoWinOpen = true;
              this.currentMidx = idx;

            }
          }

      },
    }
</script>

<style scoped>

</style>
