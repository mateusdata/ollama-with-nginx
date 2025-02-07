#!/bin/bash

# Inicia o Ollama em background
ollama serve &

# Aguarda alguns segundos para garantir que o Ollama está rodando
sleep 5

# Baixa o modelo desejado
ollama pull deepseek-coder

# Mantém o container rodando
tail -f /dev/null