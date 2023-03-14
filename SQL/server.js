require('dotenv').config();
const mysql = require('mysql');

//Establishing a mySQL connection
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

//run this in terminal: mysql.server start

//Test the connection
connection.connect((err) => {
    if (err) {
      console.error('Error connecting to MySQL server: ', err);
    } else {
      console.log('Connected to MySQL server!');
    }
  });