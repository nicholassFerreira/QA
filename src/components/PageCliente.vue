<template>
    <div class="row justify-content-center">
        <div class="col-10">
            <h1>Clientes</h1>
            <ListaCliente :clientes="clientes" @ao-excluir-cliente="excluirCliente"/>
        </div>
    </div>
    <div class="row justify-content-center">
        <CadastroCliente @ao-salvar-cliente="store.carregarClientes" class="col-10"/>
    </div>
</template>

<script lang="ts">
import http from '@/http';
import { defineComponent, computed } from 'vue';
import ListaCliente from './ListaCliente.vue';
import CadastroCliente from './CadastroCliente.vue';
import { useStore } from '@/store';

export default defineComponent({
    name: "PageCliente",
    methods: {
        async excluirCliente(id: number) {
            await http.delete("/cliente/" + id);
            this.store.carregarClientes();
        }
    },
    components: {
        ListaCliente,
        CadastroCliente,
    },
    setup() {
        const store = useStore();
        store.carregarClientes();
        const clientes = computed(() => store.clientes);
        return {
            clientes,
            store
        }
    }
})
</script>