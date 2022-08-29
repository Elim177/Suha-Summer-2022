import Home from "@/views/Home.vue";
import About from "@/views/About.vue";
import PrimarySymbol from "@/views/PrimarySymbol.vue";
import PrimarySymbolBeginner from "@/views/PrimarySymbolBeginner.vue";
import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";

const routes: Array<RouteRecordRaw> = [
    {path: '/tf', name: 'Home', component: Home},
    {path: '/', name: 'About', component: About},
    {path: '/PrimarySymbol', name: 'PrimarySymbol', component: PrimarySymbol},
    {path: '/PrimarySymbolBeginner', name: 'PrimarySymbolBeginner', component: PrimarySymbolBeginner}
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router