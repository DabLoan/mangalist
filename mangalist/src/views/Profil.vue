<template>
  <section>
    <button @click="disconnect" class="deco">Se déconnecter</button>
    <form class="blockz">
      <input type="text" v-model="userInfo.nom" name="nom" class="top input">
      <input type="text" v-model="userInfo.prenom" name="prenom" class="input">
      <input type="text" v-model="userInfo.mail" name="mail" class="input">
      <input type="text" v-model="userInfo.pseudo" name="pseudo" class="input">
      <input type="submit input" value="Modifier son profil" class="submit" v-on:click="postModif()">
    </form>
  </section>
</template>
<script>
import axios from 'axios'

export default {
  name: 'MonProfil',
  data () {
    return {
      userInfo: {
        nom: '',
        prenom: '',
        pseudo: '',
        mail: '',
        id:''
      }
    }
  },
  methods: {
    disconnect () {
      sessionStorage.clear()
      this.$router.push('/')
      this.$forceUpdate()
    },
    afficherInfo () {
      this.userInfo['pseudo'] = sessionStorage.getItem("pseudo")
      this.userInfo['prenom'] = sessionStorage.getItem("prenom")
      this.userInfo['nom'] = sessionStorage.getItem("nom")
      this.userInfo['mail'] = sessionStorage.getItem("mail")
      this.userInfo['id'] = sessionStorage.getItem("id")
    },
    async postModif () {
      let modifUser = this.toFormData(this.userInfo);
      const reponse = await axios.post('http://localhost/backMangaList/modifProfil.php', modifUser);
      sessionStorage.setItem("pseudo", reponse.data[0]['pseudo'])
      sessionStorage.setItem("nom", reponse.data[0]['nom'])
      sessionStorage.setItem("prenom",reponse.data[0]['prenom'])
      sessionStorage.setItem("mail", reponse.data[0]['mail'])
      this.$router.push('/')
    },
    toFormData: function(obj) {
      let formData = new FormData();
      for(let key in obj) {
        formData.append(key, obj[key]);
      }
      return formData;
    }
  },
  mounted (){
    this.afficherInfo()
  }
}
</script>
