<template>
    <div class="row justify-content-center">
        <div class="col-10">
            <h1>Contatos</h1>
            <ListaContato :contatos="contatos" @ao-excluir-contato=""/>
        </div>
    </div>
    <div class="row justify-content-center">
        <CadastroContato @ao-salvar-contato="listarContatos" class="col-10"/>
    </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import type Contato from "@/interfaces/Contato";
import ListaContato from "./ListaContato.vue";
import http from "@/http";
import CadastroContato from "./CadastroContato.vue";

export default defineComponent({
    name: "PageContato",
    data() {
        return {
            contatos: [] as Contato[]
        };
    },
    components: {
    ListaContato,
    CadastroContato
},
    methods: {
        async listarContatos() {
            const response = await http.get("/contato");
            this.contatos = response.data;
        },
        async excluirContato(id: number) {
            //https://www.devmedia.com.br/javascript-template-literals/41193
            await http.delete(`/contato/${id}`)
            this.listarContatos();
        }
    },
    mounted() {
        this.listarContatos();
    },
})
</script>