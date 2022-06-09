<template>
    <section>
    <p style="margin-left:44%; font-size:x-large; margin-top:3%;">Ajouter un manga</p>
    <form class="inscription" ref="form" enctype="multipart/form-data" >
      <input type="text" name="titre" Placeholder="Titre" class="top input">
      <input type="text" name="auteur" Placeholder="Auteur" class="input">
      <input type="text" name="nbtomes" Placeholder="Nombre de tomes" class="input">
      <input type="text" name="synopsis" Placeholder="Synopsis" class="input"/>
      <input type="file" name="img">
      <input class="submit input" type ="submit" value="Ajouter un manga" @click="addManga"/>
    </form>
  </section>
</template>

<script>
import axios from 'axios'

export default {
  name: 'AddManga',
  data () {
    return {
      manga: {
        titre:"",
        auteur:"",
        nbtomes:"",
        synopsis:"",
        img:""
      }
    }
  },
  methods: {
    async addManga () {
      let formData = new FormData(this.$refs.form)
      const reponse = await axios.post('http://localhost/backMangaList/addManga.php', formData)
      console.log(reponse.data)
    }
  }
}
</script>
