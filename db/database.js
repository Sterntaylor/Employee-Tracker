const sqlite3 = require('sqlite3').verbose();

//Connect to database
const db = new sqlite3.Database('./db/employee.db', err => {
    if (err) {
        return console.error(err.message);
    }
    console.log('Welcome to Employee HomeBase.')
});

module.exports = db;