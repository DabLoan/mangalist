<template>
  <section class="les_mangas">
    <span> Les derniers Mangas ajoutés</span>
    <div class="manga-list">
      <TheManga v-for="manga in mangaArray" :key="manga.id" :theManga="manga"/>
    </div>
  </section>
</template>

<script>
import axios from 'axios'
import TheManga from '../components/theMangas.vue'

export default {
  name: 'theAccueil',
  components: {
    TheManga
  },
  data () {
    return {
      mangaArray: []
    }
  },
  methods: {
    async getManga () {
      const response = await axios.get('http://localhost/backMangaList/getLastManga.php')
      this.mangaArray = response.data
      console.log(response.data)
    }
  },
  created () {
    this.getManga()
  },
  props:{
    TheAccueil: Object
  }
}
</script>