const validateForgotPassword = (req, res, next) => {
    const {email} = req.body;
    if(!email){
        return res.status(400).json({message: 'Email is required'});
    }
    next();
};

const validateResetPassword = (req, res, next) => {
    const { token, newPassword } = req.body;
    if(!token || !newPassword){
        return res.status(400).json({mesasge: 'Token and new password are required'});
    };
    next();
};

module.exports = { validateForgotPassword, validateResetPassword};