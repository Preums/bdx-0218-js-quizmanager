const mysql = require('mysql');
const connectionParameters = require('./../../db');

updateFaq = (question,reponse,id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE faq SET question = ?, reponse = ? WHERE id = ?',[question, reponse, id], (err, results) => {
                              if (err) {throw err;}
                              else  {cb('update succeed!');}
                  });
              } catch (err) {
                       throw ('An error occur during the data update: '+err);
              }
          });
      } catch (err) {
        throw ('An error occur during the connection process: '+ err);
      }
  } catch (err) {
      throw ('An error occur during the connection creation process: '+ err);
  }
};

updateAccueil = (text1,text2,id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE accueil SET text1 = ?, text2 = ? WHERE id = ?',[text1, text2, id], (err, results) => {
                              if (err) {throw err;}
                              else  {cb('update succeed!');}
                  });
              } catch (err) {
                       throw ('An error occur during the data update: '+err);
              }
          });
      } catch (err) {
        throw ('An error occur during the connection process: '+ err);
      }
  } catch (err) {
      throw ('An error occur during the connection creation process: '+ err);
  }
};

updateQst = (question,id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE questions SET question = ? WHERE id = ?',[question, id], (err, results) => {
                              if (err) {throw err;}
                              else {cb('okay update done')}
                          
                  });
              } catch (err) {
                       throw ('An error occur during the data update: '+err);
              }        
          });
      } catch (err) {
        throw ('An error occur during the connection process: '+ err);
      }
  } catch (err) { 
      throw ('An error occur during the connection creation process: '+ err);
  }
};

updateAns = (answer,great,id,cb) => {
  try {  
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE answers SET answer = ?, great=? WHERE id = ?',[answer, great, id], (err, results) => {
                              if (err) {throw err;}
                              else {cb('okay update done')}      
                  });
              } catch (err) {
                       throw ('An error occur during the data update: '+err);
              }        
          });
      } catch (err) {
        throw ('An error occur during the connection process: '+ err);
      }
  } catch (err) { 
      throw ('An error occur during the connection creation process: '+ err);
  }
};

updateAnsGreat = (great,id,cb) => {
  try {  
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE answers SET great = 0 WHERE id = ?',[great, id], (err, results) => {
                              if (err) {throw err;}
                              else {cb('okay update done')}      
                  });
              } catch (err) {
                       throw ('An error occur during the data update: '+err);
              }        
          });
      } catch (err) {
        throw ('An error occur during the connection process: '+ err);
      }
  } catch (err) { 
      throw ('An error occur during the connection creation process: '+ err);
  }
};


//VALIDATION QUIZ//
updateValidate = (id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE Quiz SET checked=1 WHERE id = ?',[id], (err, results) => {
                              if (err) {throw err;}
                              else {cb('okay update done')}
                  });
              } catch (err) {
                       throw ('An error occur during the data update: '+err);
              }        
          });
      } catch (err) {
        throw ('An error occur during the connection process: '+ err);
      }
  } catch (err) { 
      throw ('An error occur during the connection creation process: '+ err);
  }
};
//FIN VALIDATION QUIZ//

module.exports = {
  updateFaq,
  updateAccueil,
  updateQst,
  updateAns,

  updateValidate,
  updateAnsGreat
};

