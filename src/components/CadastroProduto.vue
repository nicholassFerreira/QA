<template>
    <form @submit.prevent="salvarProduto">
        <div class="mb-3">
            <label for="titulo" class="form-label">Titulo</label>
            <input type="text" class="form-control" id="titulo" v-model="produto.titulo">
        </div>
        <div class="mb-3">
            <label for="descricao" class="form-label">Descrição</label>
            <input type="textarea" class="form-control" id="descricao" v-model="produto.descricao">
        </div>
        <div class="mb-3">
            <label for="preco" class="form-label">Preço</label>
            <input type="number" class="form-control" id="preco" step="any" v-model="produto.preco">
        </div>
        <div class="mb-3">
            <label for="prazo" class="form-label">Prazo Entrega</label>
            <input type="date" class="form-control" id="prazo" v-model="produto.prazoEntrega">
        </div>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </form>
</template>

<script lang="ts">
import http from "@/http";
import type Produto from "@/interfaces/Produto";
import { defineComponent } from "vue";

export default defineComponent({
    name: "CadastroProduto",
    data() {
        return {
            produto: {} as Produto
        }
    },
    methods: {
        salvarProduto() {
            http.post("/produto", this.produto);
        }
    }
});
</script>