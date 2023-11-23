import "bootstrap/dist/css/bootstrap.min.css"
import "@fortawesome/fontawesome-free/css/all.min.css"
import 'vue'

import { createApp } from 'vue'
import { createPinia } from "pinia"
import App from './App.vue'
import router from "./router";

const app = createApp(App);
app.use(router);
app.use(createPinia());
app.mount('#app');
