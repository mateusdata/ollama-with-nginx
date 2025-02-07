#!/bin/bash

# Inicia o Ollama em background
ollama serve &

# Aguarda alguns segundos para garantir que o Ollama está rodando
sleep 5

# Baixa o modelo desejado
ollama pull deepseek-coder

# Inicia o NGINX em foreground (isso mantém o container ativo)
nginx -g "daemon off;"
