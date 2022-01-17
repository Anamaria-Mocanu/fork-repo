var express = require('express');
var router = express.Router();

// eslint-disable-next-line node/no-missing-require
var UsersController = require('../controllers/Users');

router.get('/new', UsersController.New);
router.post('/', UsersController.Create);

module.exports = router;
