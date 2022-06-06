import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'
import Manga from '../views/Manga.vue'
import Connexion from '../views/Connexion.vue'
import Profil from '../views/Profil.vue'
import Desc from '../views/Desc.vue'
import Inscription from '../views/Inscription.vue'
import AddManga from '../views/AddManga'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Index
  },
  {
    path: '/manga',
    name: 'Manga-display',
    component: Manga
  },
  {
    path: '/connexion',
    name: 'ConnexionUser',
    component: Connexion
  },
  {
    path: '/inscription',
    name: 'InscriptionUser',
    component: Inscription
  },
  {
    path: '/profil',
    name: 'MonProfil',
    component: Profil
  },
  {
    path: '/desc',
    name:'Desc',
    component: Desc
  },
  {
    path: '/addmanga',
    name:'AddManga',
    component: AddManga
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
