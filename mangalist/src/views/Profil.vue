<template>
  <section>
    <button @click="disconnect" class="deco">Se déconnecter</button>
    <div class="blockz">
      <input type="text" v-model="userInfo.nom" name="nom" class="top">
      <input type="text" v-model="userInfo.prenom" name="prenom">
      <input type="text" v-model="userInfo.mail" name="mail">
      <input type="text" v-model="userInfo.pseudo" name="pseudo">
      <input type="submit" value="Modifier son profil" class="submit" v-on:click="postModif()">
    </div>
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
        mail: ''
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
      this.userInfo = reponse.data
      
      this.$router.push('/profil')
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
