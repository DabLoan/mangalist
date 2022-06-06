<template>
    <section class="petite-box">
        <img :src="'http://localhost/backMangaList'+theManga.img" height="150px" width="300px"/>
        <p>{{ theManga.titre }}</p>
        <p>{{ theManga.auteur }}</p>
        <p>Il y a {{ theManga.tomes }} tomes paru à ce jour</p>
        <p>{{ theManga.synopsis }}</p>
    </section>
</template>

<script>

export default {
    name: 'Desc',
    data () {
        return {
            theManga: {
                titre: "",
                auteur: "",
                synopsis: "",
                img: "",
                tomes: ""
            }
        }
    },
    methods: {
        afficherManga () {
            this.theManga.titre = sessionStorage.getItem('titre')
            this.theManga.auteur = sessionStorage.getItem('auteur')            
            this.theManga.img = sessionStorage.getItem('img')
            this.theManga.synopsis = sessionStorage.getItem('synopsis')
            this.theManga.tomes = sessionStorage.getItem('tomes')
            console.log(this.theManga)
        }
    },
    mounted () {
        this.afficherManga()
    }
}
</script>
