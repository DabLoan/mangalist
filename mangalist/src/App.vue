<template>
  <div id="app">
    <theNavBar/>
    <router-view/>
  </div>
</template>

<script>
import theNavBar from './components/theNavBar.vue'

export default {
  name: 'itsCommon',
  components: {
    theNavBar
  }
}
</script>

<style>
/* commun aux pages */

@import url('https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap');

body{
  margin: 0;
  font-family: 'Work Sans', sans-serif;
  font-weight: 400;
}

header {
  background: #6b0808 ;
  padding: 15px 0;
  height:4%;
  display:flex;
  align-items: baseline;
}

header p{
  margin-top: 1%;
  margin-bottom: 1%;
  color:white;
  position: relative;
  text-align: center;
  font-size: xx-large;
  align-items: center;
  margin-left:40%;
}

/* Menu déroulant */

#menuToggle {
  display: block;
  position: relative;
  margin-top: 12.5px;
  margin-left: 50px;
  z-index: 1;
  -webkit-user-select: none;
  user-select: none;
}

#menuToggle a {
  text-decoration: none;
  color: #232323;
  transition: color 0.3s ease;
}

#menuToggle a:hover {
  color: tomato;
}

#menuToggle input {
  display: block;
  width: 40px;
  height: 32px;
  position: absolute;
  margin-top: -7px;
  margin-left: -5px;
  cursor: pointer;
  opacity: 0;
  z-index: 2;
  -webkit-touch-callout: none;
}

#menuToggle span {
  display: block;
  width: 33px;
  height: 4px;
  margin-bottom: 5px;
  position: relative;
  background: #cdcdcd;
  border-radius: 3px;
  z-index: 1;
  transform-origin: 4px 0px;
  transition: transform 0.5s cubic-bezier(0.77, 0.2, 0.05, 1), background 0.5s cubic-bezier(0.77, 0.2, 0.05, 1), opacity 0.55s ease;
}

#menuToggle span:first-child {
  transform-origin: 0% 0%;
}

#menuToggle span:nth-last-child(2) {
  transform-origin: 0% 100%;
}

#menuToggle input:checked~span {
  opacity: 1;
  transform: rotate(45deg) translate(-2px, -1px);
  background: #232323;
}

#menuToggle input:checked~span:nth-last-child(3) {
  opacity: 0;
  transform: rotate(0deg) scale(0.2, 0.2);
}

#menuToggle input:checked~span:nth-last-child(2) {
  transform: rotate(-45deg) translate(0, -1px);
}

#menu {
  position: absolute;
  width: 200px;
  height: 790px;
  margin: -100px 0 0 -50px;
  padding: 50px;
  padding-top: 125px;
  background: #ededed;
  list-style-type: none;
  -webkit-font-smoothing: antialiased;
  /* to stop flickering of text in safari */
  transform-origin: 0% 0%;
  transform: translate(-100%, 0);
  transition: transform 0.5s cubic-bezier(0.77, 0.2, 0.05, 1);
}

#menu li {
  padding: 10px 0;
  font-size: 22px;
}

#menu ul {
  position: relative;
  z-index: -2;
}

#menuToggle input:checked~ul {
  transform: none;
}

/* Boxs manga */

.les_mangas {
  border-radius: 10px;
  margin: 50px;
  background-color: rgba(89,89,89,0.1);
  height: fit-content;
  width: fit-content;
  padding: 50px;
  max-width: 80%;
}

.les_mangas span{
  font-size: 40px;
}

.boxs{
  display: flex;
  justify-content: left;
}

.les_mangas .manga {
  background-color: rgba(89,89,89,0.5);
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  text-align: center;
  margin-top: 30px;
  padding: 10px;
  margin-left: 25px;
  transition: 0.8s;
  align-items: center;
}

.manga-list {
  display: flex;
  flex-wrap: wrap;
}

.les_mangas .manga:hover {
  background-color: #6b3636;
  cursor: pointer;
  transition: 0.8s;
}

.les_mangas .manga p {
  font-size: 25px;
}

#spe{
  margin-left: 2%;
}
/* Index  */

.accueil p{
  font-size:200%;
  text-align: center;
}

.mng{
  color: #232323;
  text-decoration: none;
  transition: color 0.3s ease;
}

.mng:hover{
  color:white;
}

/* Inscription et connexion form */

.block{
  border:solid 3px #6b3636;
  border-radius: 5px;
  position:relative;
  background-color: white;
  display: flex;
  flex-direction: column;
  margin-left: 40%;
  margin-top: 4%;
  width: 15%;
  height: 150px;
  align-items: center;
}

.block input{
  margin-top: 5px;
  align-items: center;
}

.block .submit{
  background-color: #6b0808;
  color:white;
  border: unset;
  border-radius: 15px;
  cursor: pointer;
  margin-bottom: 3%;
}

.block .top{
  margin-top: 11%;
}

.input{
  border: solid 0.5px #6b3636;
  border-radius: 4px;
  height: 13%;
  text-align: center;
}

.inscription{
  border:solid 3px #6b3636;
  border-radius: 5px;
  position:relative;
  background-color: white;
  display: flex;
  flex-direction: column;
  margin-left: 40%;
  margin-top: 4%;
  width: 15%;
  height: 300px;
  align-items: center;
}

.inscription input{
  margin-top: 5px;
  margin-bottom: 2px;
  align-items: center;
}

.inscription .submit{
  background-color: #6b0808;
  color:white;
  border: unset;
  border-radius: 15px;
  cursor: pointer;
}

.inscription .top{
  margin-top: 11%;
}

.blockz{
  border:solid 3px #6b3636;
  border-radius: 5px;
  position:relative;
  background-color: white;
  display: flex;
  flex-direction: column;
  margin-left: 40%;
  width: 15%;
  height: 200px;
  align-items: center;
}

.blockz input{
  margin-top: 5px;
  align-items: center;
}

.blockz .submit{
  background-color: #6b0808;
  color:white;
  border: unset;
  border-radius: 15px;
  cursor: pointer;
  margin-bottom: 3%;
}

.blockz .top{
  margin-top: 11%;
}

.deco{
  background-color: #6b0808;
  color:white;
  border: unset;
  border-radius: 4px;
  height: 5vh;
  text-align: center;
  margin-left: 10%;
  margin-top:7%;
  cursor: pointer;
}

.petite-box{
  border:solid 2px #6b0808;
  box-shadow: 10px 5px 5px #6b3636;
  display: flex;
  flex-direction: column;
  text-align: center;
  width: 70vw;
  align-items: center;
  margin-top: 5%;
  margin-left: 15%;
}
</style>
