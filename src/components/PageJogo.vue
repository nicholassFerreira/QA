<template>
    <div class="row justify-content-center">
        <div class="col-10">
            <h1>Jogos</h1>
            <ListaJogo :jogos="jogos" @ao-excluir-jogo="excluirJogo"/>
        </div>
    </div>
    <div class="row justify-content-center">
        <CadastroJogo @ao-salvar-jogo="listarJogos" class="col-10"/>
    </div>
</template>

<script lang="ts">
import http from '@/http';
import type Jogo from '@/interfaces/Jogo';
import { defineComponent } from 'vue';
import ListaJogo from './ListaJogo.vue';
import CadastroJogo from './CadastroJogo.vue';

export default defineComponent({
    name: "PageJogo",
    data() {
        return {
            jogos: [] as Jogo[]
        }
    },
    methods: {
        async listarJogos() {
            const response = await http.get("/jogo");
            this.jogos = response.data;
        },
        async excluirJogo(id: number) {
            await http.delete(`/jogo/${id}`)
            this.listarJogos();
        }
    },
    mounted() {
        this.listarJogos();
    },
    components: {
    ListaJogo,
    CadastroJogo
}
})
</script>