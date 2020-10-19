const express = require('express');
const router = express.Router();
const db = require('../db/database');

router.get('/department', (req, res) => {
    const sql = 'SELECT * FROM department';
    const params = [];
    db.all(sql, params, (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
          }
          res.json({
            message: 'success',
            data: rows
    })
})
});
module.exports = router;