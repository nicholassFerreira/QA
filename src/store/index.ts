import { defineStore } from 'pinia'
import type Cliente from '../interfaces/Cliente'
import http from '../http'

export interface Estado {
    clientes: Cliente[],
}

export const useStore = defineStore("estado", {
    state: (): Estado => ({
        clientes: []
    }),
    actions: {
        async carregarClientes() {
            const response = await http.get("/cliente");
            this.clientes = response.data;
        }
    }
})