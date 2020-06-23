# Real estate web services - HappyHouse

<p>
 
</p>

![version](https://img.shields.io/badge/version-0.0.1-orange?)
![vue](https://img.shields.io/badge/vue-3.0.0-blue?logo=Vue.js)
![spring-boot](https://img.shields.io/badge/springboot-4.0.0-yellow?logo=spring)
![html](https://img.shields.io/badge/html-html5-red?logo=html5)
![css](https://img.shields.io/badge/css-css3-red?logo=css3)
![javascript](https://img.shields.io/badge/javascript-es6-yellowgreen?logo=javascript)

-***project***  
period  : 2020.06.11~2020.06.17  
members : **Sunsoo Lee(developer)**, Hyundai Kim(PM)  
role    : Front_End(Vue.js), Back-End(Spring Boot), MyBatis(MySQL)  

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Prerequisites](#prerequisites)
* [Contact](#contact)


<!-- ABOUT THE PROJECT -->
## About The Project
![image](https://user-images.githubusercontent.com/41406752/85376676-fdf7dc00-b572-11ea-8cea-e73101df1665.png)

It is a web service that provides property information using public data.
The main functions are Member, QnA. Property.

### Member
![image](https://user-images.githubusercontent.com/41406752/85377172-a60da500-b573-11ea-9df9-f0c208e16f17.png)
- User information management using Vuex (Limiting the scope of provision according to user accounts in the view)
- User information management using Axios (Store, compare, and query user information in database)
- Responsive information messages, Email duplicate check and password matching using Watch, Computed

### QnA
![image](https://user-images.githubusercontent.com/41406752/85398330-07437180-b590-11ea-8e9e-ed5c4ef34024.png)
- Notice data search, creation, deletion, etc. using axios
- 'Question by user' function (to be added)

### Property
![image](https://user-images.githubusercontent.com/41406752/85375878-e79d5080-b571-11ea-93f7-82d01a108ffa.png)
- Property data search using axios
- Housing name-based search using axios
- Vuex(actions -> mutations -> state) user recent view history management
- Automatic loading of property information using infinite scrolling
- Home location search and cluster function using google api, specific area search function using axios

![image](https://user-images.githubusercontent.com/41406752/85401527-20025600-b595-11ea-912a-ace337e05ae4.png)
- Provide tag information based on housing information
- Provide housing details
- Providing surrounding commercial and environmental information using axios

## Built With
This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.
* [Bootstrap](https://getbootstrap.com)
* [JQuery](https://jquery.com)


<!-- GETTING STARTED -->

## Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* npm
```sh
npm install npm@latest -g
```
```sh
npm install vue2-google-maps
```
```sh
npm install @google/markerclusterer
```
```sh
npm i vue-infinite-loading
```
```sh
npm install vuex --save
```


<!-- CONTACT -->
## Contact

Sunsoo Lee - [email] - tjstndi77@naver.com

Project Link: [https://github.com/LEESUNSOO/happyhouse](https://github.com/LEESUNSOO/happyhouse)

