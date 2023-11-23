<template>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	    <div class="container-fluid">
	      <span class="navbar-brand">Menu</span>
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarNav">
	        <ul class="navbar-nav">
	          <li class="nav-item">
	            <RouterLink to="/" class="nav-link active" aria-current="page">Clientes</RouterLink>
	          </li>
	          <li class="nav-item">
	            <RouterLink class="nav-link" to="/produto">Produtos</RouterLink>
	          </li>
	          <li class="nav-item">
	            <RouterLink class="nav-link" to="/contato">Contatos</RouterLink>
	          </li>
	          <li class="nav-item">
	            <RouterLink class="nav-link" to="/jogo">Jogos</RouterLink>
	          </li>
			  <li class="nav-item">
	            <RouterLink class="nav-link" to="/novo-usuario">Novo Usuário</RouterLink>
	          </li>
			  <li class="nav-item">
				<a class="nav-link" role="button" @click="logout">Logout</a>
			  </li>
	        </ul>
	      </div>
	    </div>
	  </nav>
</template>

<script lang="ts">
import { defineComponent } from 'vue';


export default defineComponent({
	name: "NavMenu",
	methods: {
		logout() {
			localStorage.removeItem("token");
			this.$router.push("/login");
		}
	}
})
</script>
