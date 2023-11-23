<script lang="ts">
import { defineComponent } from 'vue';
import NavMenu from './components/NavMenu.vue'

export default defineComponent({
    name: "App",
    components: { NavMenu }
})
</script>

<template>
  <NavMenu />
  <div class="container">
    <RouterView></RouterView>  
  </div>
</template>

<style scoped>

</style>
