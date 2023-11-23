<template>
    <form @submit.prevent="salvarContato">
        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" class="form-control" id="nome" v-model="contato.nome">
        </div>
        <div class="mb-3">
            <label for="numero" class="form-label">Número</label>
            <input type="text" class="form-control" id="numero" v-model="contato.numero">
        </div>
        <div class="mb-3">
            <label for="tipo" class="form-label">Tipo</label>
            <select name="tipo" class="form-select" v-model="contato.tipo">
                <option disabled value="">Escolha uma opção</option>
                <option value="fixo">Fixo</option>
                <option value="cel">Celular</option>
                <option value="fax">Fax</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </form>
</template>

<script lang="ts">
import http from '@/http';
import type Contato from '@/interfaces/Contato';
import { defineComponent } from 'vue';


export default defineComponent({
    name: "CadastroContato",
    data() {
        return {
            contato: {} as Contato
        }
    },
    methods: {
        async salvarContato() {
            await http.post("/contato", this.contato);
            this.contato = {} as Contato;
            this.$emit("aoSalvarContato");
        }
    },
    emits: ["aoSalvarContato"]
})
</script>