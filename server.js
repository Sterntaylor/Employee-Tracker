const PORT = process.env.PORT || 3001;
const app = express();
const mysql = require('mysql2');
const cTable = require('console.table');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: './db/employee.db'
});
connection.query('SELECT * FROM employee WHERE first_name = "Taylor" AND last_name = "Stern"',
      function(err, results, fields){
        if (err) {
          return console.error(err.message);
        }
        console.log(results);
        console.log(fields);
      });

const apiRoutes = require('./routes');

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use('/api', apiRoutes);

// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
  });

// Start server after DB connection
db.on('open', () => {
    app.listen(PORT, () => {
      console.log(`Server running on port ${PORT}`);
    });
  });

