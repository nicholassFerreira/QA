import axios from "axios";

const http = axios.create({
    baseURL: "http://localhost:9090"
});

http.interceptors.request.use(config => {
    if (!config.url?.includes("auth")) {
        config.headers.Authorization = "Bearer " + atob(localStorage.getItem("token") || '');
    }
    return config;
});

export default http;