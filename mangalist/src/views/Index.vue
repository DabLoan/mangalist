<template>
  <section class="accueil">
    <p>Bienvenue sur MangaList ! Nous sommes heureux de votre visite</p>
    <TheAccueil/>
  </section>
</template>

<script>
import TheAccueil from '../components/theAccueil.vue'

export default {
  name: 'theIndex',
  components: {
    TheAccueil
  }
}
</script>