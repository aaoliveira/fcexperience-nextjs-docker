Informações do desafio

Neste desafio, você deve criar uma aplicação Next.js com Docker que rode na porta 3000.
Esta aplicação precisa expor 2 rotas de API Rest:

- Criar chat - POST /api/chats
- Listar chats - GET /api/chats

Um chat tem 2 dados, o ID é auto-incrementado e a mensagem que é string.
O Next.js precisa salvar e buscar os dados do banco de dados usando o Prisma, o banco de dados a ser utilizado precisa ser o SQLite e precisa ser commitado no projeto.
Crie o arquivo api.http para declarar as 2 chamadas a serem realizadas.
Para executar o projeto no docker: docker run -d -p 3000:3000 fcexperience-nextjs-docker