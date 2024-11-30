const express = require('express');
const router = express.Router();
const { signup, login } = require('../controller/user.controller');
const { forgotPassword } = require('../controller/forgotpassword.controller');
const { validateResetPassword, validateForgotPassword } = require('../middleware/reset.middleware');
const { resetPassword } = require('../controller/resetpassword.controller');

// auth route
router.post('/signup', signup);
router.post('/login', login);

//forgot pass route

router.post('/forgot-password', validateForgotPassword, forgotPassword);
router.post('/reset-password', validateResetPassword, resetPassword);

module.exports = router;
