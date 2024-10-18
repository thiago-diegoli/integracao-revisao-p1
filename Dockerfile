# Imagem node
FROM node:20.15.1

# Diretório dos arquivos no container
WORKDIR /app

# Copia os arquivos package*.json ./ para o diretório de arquivo
COPY package*.json ./

# Baixa e instala as dependências
RUN npm install

# Copia todos os arquivos da pasta raiz para a pasta de trabalho no container
COPY . .

# Criando algumas variáveis de ambiente
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=123456
ENV MYSQL_DATABASE=testdb
ENV MYSQL_HOST=ct-db-mysql

# Porta exposta em que a aplicação roda
EXPOSE 4000

# Comando utilizado para iniciar a aplicação
CMD ["npm", "run", "start"]
