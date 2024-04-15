const mysql = require("mysql2");
const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "",
  database: "aulaweb",
});

module.exports = pool.promise();
