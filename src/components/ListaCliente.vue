<template>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nome</th>
                <th scope="col">Endereço</th>
                <th scope="col">Email</th>
                <th scope="col">CPF</th>
                <th scope="col">Ações</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="cliente in clientes">
                <th scope="row">{{ cliente.id }}</th>
                <td>{{ cliente.nome }}</td>
                <td>{{ cliente.endereco }}</td>
                <td>{{ cliente.email }}</td>
                <td>{{ cliente.cpf }}</td>
                <td>
                    <button type="button" class="btn btn-danger" @click="$emit('aoExcluirCliente', cliente.id)">
                        <i class="fa-solid fa-trash"></i>
                    </button>
                </td>
            </tr>
            
        </tbody>
    </table>
</template>

<script lang="ts">
import { defineComponent, type PropType } from 'vue';
import type Cliente from "../interfaces/Cliente";

export default defineComponent({
    name: "ListaCliente",
    props: {
        clientes: {
            type: Array as PropType<Cliente[]>,
            required: true
        }
    },
    emits: ["aoExcluirCliente"]
})
</script>

<style></style>