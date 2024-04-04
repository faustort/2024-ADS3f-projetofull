// Importa o express
const express = require("express");

// cria uma instância do express
const app = express();
// define que o express vai entender json
app.use(express.json());

// define a rota raiz
app.get("/", (req, res) => {
  res.json("conseguiu");
});

app.get("/usuarios", (req, res) => {
  res.json([
    {
      nome: "fausto",
      sobrenome: "toloi",
    },
  ]);
});

// define a porta e inicia o servidor
const PORT = 3001;
// cria um servidor na porta 3001
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta: ${PORT}`);
});
