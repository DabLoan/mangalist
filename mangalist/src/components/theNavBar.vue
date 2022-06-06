<template>
  <header>
    <div id="menuToggle">
      <input type="checkbox" ref="close" />

      <span></span>
      <span></span>
      <span></span>

      <ul id="menu">
      <router-link to="/" >
      <li>Accueil</li>
      </router-link>
      <router-link v-if="getIsNotCon()" to="/connexion">
        <li>Se connecter</li>
      </router-link>
      <router-link v-if="getIsNotCon()" to="/inscription">
        <li>S'Inscrire</li>
      </router-link>
      <router-link v-if="getIsCon()" to="/profil">
        <li>Mon Profil</li>
      </router-link>
      <router-link v-if="getIsCon()" to="/manga">
        <li>Liste des mangas</li>
      </router-link>
      <router-link v-if="getIsAdmin()" to="/addmanga">
        <li>Ajouter un manga</li>
      </router-link>
      </ul>
    </div>
    <p>MangaList</p>
</header>
</template>

<script>
export default {
  name: 'theNavBar',
  data (){
    return {
      isCon: false,
      isNotCon: true,
      isAdmin: false
    }
  },
  watch:{
    $route (to, from){
      if(to !== from){
        this.$refs.close.checked = false
      }
    }
  },
  methods: {
    getIsCon () {
      if(sessionStorage.getItem('id') !== null){
        this.isCon = true
        this.isNotCon = false
      }
      return this.isCon
    },
    getIsNotCon () {
      if(sessionStorage.getItem('id') == null){
        this.isCon = false
        this.isNotCon = true
      }
      return this.isNotCon
    },
    getIsAdmin () {
      if(sessionStorage.getItem('id_role') == 2){
        this.isAdmin = true
      }
      return this.isAdmin
    }
  }
}
</script>
