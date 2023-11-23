<template>
    <div class="row align-items-center justify-content-center">
        <div class="col-6">
            <div class="card">
                <div class="card-body">
                    <div v-if="erro" class="alert alert-danger" role="alert">
                        Usuário ou senha incorretos!
                    </div>
                    <form @submit.prevent="autenticar">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" v-model="usuario.email">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" v-model="usuario.senha">
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import http from '@/http';
import type { Usuario } from '@/interfaces/Usuario';
import { defineComponent } from 'vue';


export default defineComponent({
    name: "Login",
    data() {
        return {
            usuario: {} as Usuario,
            erro: false
        }
    },
    methods: {
        async autenticar() {
            try {
                const response = await http.post("/auth/login", this.usuario);
                localStorage.setItem("token", btoa(response.data));
                this.$router.push("/");
            } catch {
                this.erro = true;
            }
        }
    }
})
</script>

<style scoped>
.row {
    height: calc(100vh - 56px) ;
}
</style>
