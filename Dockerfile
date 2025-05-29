FROM node:20.19.2

WORKDIR /n8n

# Copia tudo
COPY . .

# Instala o pnpm
RUN npm install -g pnpm

# Remove prepare para não travar build
RUN sed -i '/"prepare"/d' package.json

# Instala tudo com workspaces funcionando
RUN pnpm install

# Builda TUDO, não só o editor-ui
RUN pnpm run build

EXPOSE 5678

CMD ["pnpm", "start"]
