<template>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Título</th>
                <th scope="col">Descrição</th>
                <th scope="col">Preço</th>
                <th scope="col">Prazo Entrega</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="produto in produtos">
                <th scope="row">{{ produto.id }}</th>
                <td>{{ produto.titulo }}</td>
                <td>{{ produto.descricao }}</td>
                <td>{{ produto.preco }}</td>
                <td>{{ produto.prazoEntrega }}</td>
            </tr>
        </tbody>
    </table>
</template>

<script lang="ts">
import http from '@/http';
import type Produto from '@/interfaces/Produto';
import { defineComponent } from 'vue';


export default defineComponent({
    name: "ListaProduto",
    data() {
        return {
            produtos: [] as Produto[]
        }
    },
    async mounted() {
        const response = await http.get("/produto");
        this.produtos = response.data;
    }
})
</script>