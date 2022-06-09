<template>
  <section>
    <p style="margin-left:44%; font-size:x-large; margin-top:3%;">S'inscrire</p>
    <form class="inscription" >
      <input type="text" name="nom" v-model="user.nom" Placeholder="Nom" class="top input">
      <input type="text" name="mail" v-model="user.prenom" Placeholder="Prénom" class="input">
      <input type="text" name="mdp" v-model="user.pseudo" Placeholder="Pseudo" class="input">
      <input type="text" name="mail" v-model="user.mail" Placeholder="Mail" class="input">
      <input type="password" name="mdp" v-model="user.mdp" Placeholder="Mot de passe" class="input">
      <input type="password" name="confmdp" v-model="user.confmdp" Placeholder="Confirmez le mot de passe" class="input">
      <input class="submit input" type ="submit" value="S'inscrire'" v-on:click="postInsc()" />
    </form>
  </section>
</template>

<script>
import axios from 'axios'

export default {
  name: 'InscriptionUser',
  data () {
    return{
      pb:'',
      userInfo: [],
      user: {
        nom: '',
        prenom:'',
        pseudo: '',
        mail:'',
        mdp: '',
        confmdp: ''
      }
    }
  },
  methods: {
    async postInsc () {
      let userInsc = this.toFormData(this.user);
      const response = await axios.post('http://localhost/backMangaList/inscription.php', userInsc);
      console.log(response)
      if(response.data == 1){
        this.$router.push('/')
      }
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
