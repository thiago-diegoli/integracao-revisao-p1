# Imagem base do Node
FROM node:20.15.1

# Diretório dos arquivos no container
WORKDIR /app

# Copia os arquivos package*.json ./ para o diretório de arquivo
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todos os arquivos da pasta raiz para a pasta de trabalho no container
COPY . .

# Porta exposta em que a aplicação roda
EXPOSE 4000

# Comando utilizado para iniciar a aplicação
CMD ["npm", "run", "start"]