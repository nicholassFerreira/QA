<template>
    <form @submit.prevent="salvarJogo">
        <div class="mb-3">
            <label for="titulo" class="form-label">Titulo</label>
            <input type="text" class="form-control" id="titulo" v-model="jogo.titulo">
        </div>
        <div class="mb-3">
            <label for="descricao" class="form-label">Descrição</label>
            <input type="textarea" class="form-control" id="descricao" v-model="jogo.descricao">
        </div>
        <div class="mb-3">
            <label for="preco" class="form-label">Preço</label>
            <input type="number" class="form-control" id="preco" v-model="jogo.preco">
        </div>
        <div class="mb-3">
            <label for="lancamento" class="form-label">Data Lançamento</label>
            <input type="date" class="form-control" id="lancamento" v-model="jogo.dtLancamento">
        </div>
        <div class="mb-3">
            <label for="desenvolvedora" class="form-label">Desenvolvedora</label>
            <input type="text" class="form-control" id="desenvolvedora" v-model="jogo.nomeDesenvolvedora">
        </div>
        <div class="mb-3">
            <label for="publisher" class="form-label">Publisher</label>
            <input type="text" class="form-control" id="publisher" v-model="jogo.nomePublisher">
        </div>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </form>
</template>

<script lang="ts">
import http from '@/http';
import type Jogo from '@/interfaces/Jogo';
import { defineComponent } from 'vue';

export default defineComponent({
    name: "CadastroJogo",
    data() {
        return {
            jogo: {} as Jogo
        }
    },
    methods: {
        async salvarJogo() {
            await http.post("/jogo", this.jogo);
            this.jogo = {} as Jogo;
            this.$emit("aoSalvarJogo");
        }
    },
    emits: ["aoSalvarJogo"]
})
</script>