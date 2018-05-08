const users = require('../models').users;

var usersController = {};

usersController.createUser = function(req, res) {
    users.create({
        firstname: req.body.firstname,
        lastname: req.body.lastname,
        email: req.body.email,
        pass: hashpass(req.body.password),
        direction: req.body.direction
    }).then(user => {
        res.send({success: true})
    });
}

function hashpass (pass) {
    let newpass = "";
    for (let i = 0; i < pass.length; i++) {
        newpass +=  String.fromCharCode(pass.charCodeAt(i) + 1);
    }
    return newpass
}

module.exports = usersController;
