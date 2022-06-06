<template>
    <section>
    <p style="margin-left:44%; font-size:x-large; margin-top:3%;">Ajouter un manga</p>
    <div class="inscription" >
      <input type="text" name="titre" Placeholder="Titre" class="top">
      <input type="text" name="auteur" Placeholder="Auteur" >
      <input type="text" name="tomes" Placeholder="Nombre de tomes">
      <input type="file" name="img">
      <input class="submit" type ="submit" value="Ajouter un manga" />
    </div>
  </section>
</template>

<script>

export default {
    name: 'AddManga'
}
</script>
