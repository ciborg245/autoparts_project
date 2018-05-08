const parts = require('../models').parts;
const db = require('../models/index');

partsController = {};

partsController.getParts = function(req, res) {
    let query = 'SELECT name, weight, price, color ' +
        "FROM parts WHERE name LIKE '%" + req.params.search + "%'";

    console.log(query);

    db.sequelize.query(query).then(rows => {
        res.send({
            rows: rows,
            success: true
        })
    })

}

module.exports = partsController;
