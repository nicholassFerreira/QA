<template>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Título</th>
                <th scope="col">Descrição</th>
                <th scope="col">Preço</th>
                <th scope="col">Data Lançamento</th>
                <th scope="col">Desenvolvedora</th>
                <th scope="col">Publisher</th>
                <th scope="col">Ações</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="jogo in jogos">
                <th scope="row">{{ jogo.id }}</th>
                <td>{{ jogo.titulo }}</td>
                <td>{{ jogo.descricao }}</td>
                <td>{{ jogo.preco }}</td>
                <td>{{ getDtLancamento(jogo.dtLancamento)}}</td>
                <td>{{ jogo.nomeDesenvolvedora }}</td>
                <td>{{ jogo.nomePublisher }}</td>
                <td>
                    <button type="button" class="btn btn-danger" @click="$emit('aoExcluirJogo', jogo.id)">
                        <i class="fa-solid fa-trash"></i>
                    </button>
                </td>
            </tr>
        </tbody>
    </table>
</template>

<script lang="ts">
import type Jogo from '@/interfaces/Jogo';
import  { defineComponent, type PropType } from 'vue';


export default defineComponent({
    name: "ListaJogo",
    props: {
        jogos: {
            type: Array as PropType<Jogo[]>,
            required: true
        }
    },
    methods: {
        getDtLancamento(dtLancamento: string | Date) {
            return new Date(dtLancamento).toLocaleString().substring(0,10);
        }
    },
    emits: ["aoExcluirJogo"]
});
</script>