<template>
    <div class="card">
        <div class="card-body">
            <form @submit.prevent="cadastrarUsuario" class="needs-validation">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" v-model="usuario.email">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Senha</label>
                    <input type="password" class="form-control" :class="{'is-invalid': senhaVazia}" id="exampleInputPassword1" v-model="usuario.senha" @input="limparValidacoes">
                    <div class="invalid-feedback">
                        Campo Obrigatório.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="confirma" class="form-label">Confirme sua senha</label>
                    <input type="password" class="form-control" :class="{'is-invalid': confirmacaoInvalida}" id="confirma" v-model="usuario.confirmacaoSenha" @input="limparValidacoes">
                    <div class="invalid-feedback">
                        Senhas não conferem.
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </form>
        </div>
    </div>
</template>

<script lang="ts">
import http from "@/http";
import type { Usuario } from "@/interfaces/Usuario";
import { defineComponent } from "vue";

export default defineComponent({
    name: "CadastroUsuario",
    data() {
        return {
            usuario: {} as Usuario,
            confirmacaoInvalida: false,
            senhaVazia: false
        }
    },
    methods: {
        async cadastrarUsuario() {
            if (!this.usuario.senha) {
                this.senhaVazia = true;
            } else if (this.usuario.senha !== this.usuario.confirmacaoSenha) {
                this.confirmacaoInvalida = true;
            } else {
                await http.post("/auth/registrar", this.usuario);
                this.$router.push("/login");
            }
        },
        limparValidacoes() {
            this.senhaVazia = false;
            this.confirmacaoInvalida = false;
        }
    }
})
</script>