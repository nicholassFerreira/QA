<template>
    <form @submit.prevent="salvarCliente">
        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" class="form-control" id="nome" v-model="cliente.nome">
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" id="email" v-model="cliente.email">
        </div>
        <div class="mb-3">
            <label for="endereco" class="form-label">Endereço</label>
            <input type="text" class="form-control" id="endereco" v-model="cliente.endereco">
        </div>
        <div class="mb-3">
            <label for="dt-nascimento" class="form-label">Data Nascimento</label>
            <input type="date" class="form-control" id="dt-nascimento" v-model="cliente.dtNascimento">
        </div>
        <div class="mb-3">
            <label for="cpf" class="form-label">CPF</label>
            <input type="text" class="form-control" id="cpf" v-model="cliente.cpf">
        </div>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </form>
</template>

<script lang="ts">
import http from '@/http';
import type Cliente from '@/interfaces/Cliente';
import { defineComponent } from 'vue';

export default defineComponent({
    name: "Cliente",
    data() {
        return {
            cliente: {} as Cliente
        }
    },
    methods: {
        async salvarCliente() {
            await http.post("/cliente", this.cliente);
            this.cliente = {} as Cliente;
            this.$emit("aoSalvarCliente");
        }
    },
    emits: ["aoSalvarCliente"]
})
</script>

<style>
</style>