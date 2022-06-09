<template>
  <section>
    <p style="margin-left:44%; font-size:x-large; margin-top:3%;">Se connecter</p>
    <div class="block" >
      <input type="text" name="mail" v-model="user.mail" Placeholder="Mail" class="top">
      <input type="password" name="mdp" v-model="user.mdp" Placeholder="Mot de passe">
      <input class="submit" type ="submit" value="Se connecter" v-on:click="postCon()"/>
    </div>
  </section>
</template>
<script>
import axios from 'axios'

export default {
  name: 'ConnexionUser',
  data () {
    return{
      userInfo: [],
      user: {
        mail:'',
        mdp: ''
      }
    }
  },
  methods: {
    async postCon () {
      let userCon = this.toFormData(this.user);
      const response = await axios.post('http://localhost/backMangaList/connexion.php', userCon);
      this.userInfo = response.data
      console.log(response.data)
      sessionStorage.setItem("id", this.userInfo[0]['id'])
      sessionStorage.setItem("id_role", this.userInfo[0]['id_role'])
      sessionStorage.setItem("pseudo", this.userInfo[0]['pseudo'])
      sessionStorage.setItem("nom", this.userInfo[0]['nom'])
      sessionStorage.setItem("prenom", this.userInfo[0]['prenom'])
      sessionStorage.setItem("mail", this.userInfo[0]['mail'])
      console.log(sessionStorage)
      this.$router.push('/')
    },
    toFormData: function(obj) {
      let formData = new FormData();
      for(let key in obj) {
        formData.append(key, obj[key]);
      }
      return formData;
    }
  }
}
</script>
