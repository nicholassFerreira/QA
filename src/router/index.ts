import CadastroUsuario from "@/components/CadastroUsuario.vue";
import Login from "@/components/Login.vue";
import PageCliente from "@/components/PageCliente.vue";
import PageContato from "@/components/PageContato.vue";
import PageJogo from "@/components/PageJogo.vue";
import PageProduto from "@/components/PageProduto.vue";
import http from "@/http";
import { createRouter, createWebHashHistory, type RouteRecordRaw } from "vue-router";

const routes: RouteRecordRaw[] = [
    {
        path: "/",
        component: PageCliente
    },
    {
        path: "/produto",
        component: PageProduto
    },
    {
        path: "/jogo",
        component: PageJogo
    },
    {
        path: "/contato",
        component: PageContato
    },
    {
        path: "/novo-usuario",
        component: CadastroUsuario
    },
    {
        path: "/login",
        component: Login
    }
];

const router = createRouter({
    history: createWebHashHistory(),
    routes
});

router.beforeEach(async (to, from) => {
    if (to.path !== "/login" && to.path !== "/novo-usuario") {
        const token = atob(localStorage.getItem("token") || '');
        try {
            const response = await http.get('/auth/validate/' + token);
            if (response.status >= 400) {
                return {path: "/login"}
            }
        } catch {
            return {path: "/login"}
        }
    }
})

export default router;