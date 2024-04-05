import { useEffect, useState } from "react";

import axios from "axios";

const ListaTarefas = () => {
  const [tarefas, setTarefas] = useState([]);
  const pegaTarefas = async () => {
    try {
      // Assuming 'http://localhost:3001' is the server where your API is running
      const resposta = await axios.get("http://localhost:3001/tarefas", {
        // Add headers to the request
        headers: {
          "Content-Type": "application/json",
          // Include any other headers required by your server/API
        },
      });
      
      setTarefas(resposta.data);
      console.log(resposta);
    } catch (error) {
      // Handle errors here
      console.error("An error occurred:", error);
    }
  };

  useEffect(() => {
    pegaTarefas();
  }, []);

  return (
    <div>
      <h1>Lista de Tarefas</h1>
      {tarefas.map((tarefa) => {
        return <div key={tarefa.idTar}>{tarefa.titulo}</div>;
      })}
    </div>
  );
};

export default ListaTarefas;
