# Use a imagem do Ollama como base
FROM ollama/ollama

# Instala o NGINX (assumindo que a imagem base seja baseada em Debian/Ubuntu)
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copia a configuração customizada do NGINX para redirecionar para o Ollama
# Crie um arquivo 'ollama.conf' (mais detalhes abaixo)
COPY ollama.conf /etc/nginx/conf.d/ollama.conf

# (Opcional) Remove a configuração padrão do NGINX, se existir
RUN rm -f /etc/nginx/sites-enabled/default

# Copia o script de inicialização que irá iniciar ambos os serviços
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expõe as portas necessárias:
# - 80: porta padrão do NGINX (a qual você vai acessar externamente)
# - 11434: porta onde o Ollama roda internamente (pode ou não ser exposta externamente)
EXPOSE 80 11434

# Define o ENTRYPOINT para executar o script
ENTRYPOINT ["/bin/bash", "/start.sh"]
