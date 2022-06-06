<template>
  <section class="les_mangas">
    <span> Les Mangas ouverts aux débats</span>
    <div class="manga-list">
      <TheManga v-for="manga in mangaArray" :key="manga.id" :theManga="manga" id="spe"/>
    </div>
  </section>
</template>

<script>
import axios from 'axios'
import TheManga from '../components/theMangas.vue'

export default {
  name: 'Manga-display',
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
      const response = await axios.get('http://localhost/backMangaList/getManga.php')
      this.mangaArray = response.data
      console.log(response.data)
    }
  },
  created () {
    this.getManga()
  }
}
</script>
