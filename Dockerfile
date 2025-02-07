# Usa a imagem oficial do Ollama
FROM ollama/ollama

# Define um volume para armazenar os modelos de forma persistente
VOLUME /root/.ollama

# Expõe a porta onde o Ollama roda
EXPOSE 11434

# Copia o script de inicialização para dentro do container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Define um novo ENTRYPOINT para executar o script corretamente
ENTRYPOINT ["/bin/bash", "/start.sh"]