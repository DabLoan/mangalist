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
    },
    postModif () {

    }
  },
  mounted (){
    this.afficherInfo()
  }
}
</script>
