<template>
    <section @click="keepManga" class="boxs">
        <section class="manga">
          <img :src="'http://localhost/backMangaList'+theManga.img" height="150px" width="300px"/>
          <p>{{ theManga.titre }}</p>
         </section>
    </section>
</template>

<script>

export default {
  name: 'TheManga',
  props: {
    theManga: Object
  },
  methods: {
    keepManga () {
      console.log("coucou")
      sessionStorage.setItem("titre", this.theManga.titre)
      sessionStorage.setItem("auteur", this.theManga.auteur)
      sessionStorage.setItem("img", this.theManga.img)
      sessionStorage.setItem("synopsis", this.theManga.synopsis)
      sessionStorage.setItem("tomes", this.theManga.tomes)
      this.$router.push('/desc')
    }
  }
}
</script>
