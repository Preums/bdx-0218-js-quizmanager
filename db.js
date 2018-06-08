
var mysql = require('mysql')
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : '',
  password : '',
  database : 'quizDb'
})

connection.connect()

module.exports = connection;
