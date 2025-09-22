# 1. Define a imagem base
# Usaremos uma imagem oficial e leve do Nginx baseada no Alpine Linux.
FROM nginx:alpine

# 2. Copia os arquivos do projeto
# Copia o conteúdo da pasta atual (onde está o Dockerfile) para o diretório
# padrão do Nginx que serve os arquivos HTML.
COPY . /usr/share/nginx/html

# 3. Expõe a porta
# Informa ao Docker que o contêiner escutará na porta 80.
EXPOSE 80

# O comando para iniciar o Nginx já está incluído na imagem base,
# então não precisamos de uma instrução CMD ou ENTRYPOINT.