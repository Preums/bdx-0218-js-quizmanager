//Définition des variables de connection
const mysql = require('mysql');

const connectionParameters = {
  host     : 'localhost',
  user     : 'root',
  password : 'jecode4wcs',
  database : 'quizDb'
};
// TODO: a adapter aux paramètres de la base de donnée du fournisseur en production

module.exports = connectionParameters;