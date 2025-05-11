# Dockerfile
FROM ollama/ollama:latest

# Set the default model to Mixtral
RUN ollama pull mixtral

# Optional: use a specific quantized variant
# You can pull a specific GGUF from TheBloke if needed and import manually

# Expose the Ollama REST API
EXPOSE 11434

# Entrypoint to run Ollama
CMD ["ollama", "serve"]