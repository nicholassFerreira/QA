<template>
    <div class="row justify-content-center">
        <div class="col-10">
            <h1>Produtos</h1>
            <ListaProduto/>
        </div>
    </div>
    <div class="row justify-content-center">
        <CadastroProduto class="col-10"/>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import ListaProduto from './ListaProduto.vue';
import CadastroProduto from './CadastroProduto.vue';

export default defineComponent({
    name: "PageProduto",
    components: {
        ListaProduto,
        CadastroProduto
    }
})
</script>