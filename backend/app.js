// Importa o express
const express = require("express");

const db = require("./database");
// cria uma instância do express
const app = express();
// define que o express vai entender json
app.use(express.json());

// Middleware para permitir CORS
app.use((req, res, next) => {
  // Permite acesso de qualquer origem
  res.header("Access-Control-Allow-Origin", "*");
  // Prossiga para a próxima camada de middleware
  next();
});

// define a rota raiz
app.get("/", (req, res) => {
  res.json("conseguiu");
});

app.get("/tarefas", async (req, res) => {
  try {
    const [rows] = await db.query("SELECT * FROM tarefas");
    res.json(rows);
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "erro ao buscar tarefas" });
  }
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
