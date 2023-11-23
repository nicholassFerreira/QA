<template>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nome</th>
                <th scope="col">Número</th>
                <th scope="col">Tipo</th>
                <th scope="col">Ações</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="contato in contatos">
                <th scope="row">{{ contato.id }}</th>
                <td>{{ contato.nome }}</td>
                <td>{{ contato.numero }}</td>
                <td>{{ contato.tipo }}</td>
                <td>
                    <button type="button" class="btn btn-danger" @click="$emit('aoExcluirContato', contato.id)">
                        <i class="fa-solid fa-trash"></i>
                    </button>
                </td>
            </tr>
        </tbody>
    </table>
</template>

<script lang="ts">
import type Contato from '@/interfaces/Contato';
import { defineComponent, type PropType } from 'vue';


export default defineComponent({
    name: "ListaContato",
    props: {
        contatos: {
            type: Array as PropType<Contato[]>,
            required: true
        }
    },
    emits: ["aoExcluirContato"]
})
</script>