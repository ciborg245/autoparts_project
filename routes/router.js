const express = require('express')
const router = express.Router()
const usersController = require('../controllers/users')
const partsController = require('../controllers/parts')

router.get('/', function(req, res) {res.send("welcome")});
router.post('/user', usersController.createUser)
router.get('/parts', partsController.getParts)

module.exports = router;
