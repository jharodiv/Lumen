const crypto = require('crypto');
const User = require('../models/user.model');

const forgotPassword = async (req, res ) => {
    try{
        const { email } = req.body;

        const user = await User.findOne({ email });
        if (!user){
            return res.status(404).json({message: 'User not found'});            
        }

        const resetToken = crypto.randomBytes(20).toString('hex');
        user.resetPasswordToken = resetToken;
        user.resetPasswordExpires = Date.now() + 3600000;
        await user.save();

        return res.status(200).json({
            message: 'Password reset token generated',
            resetToken: resetToken,
        });

    } catch {
        console.error(error);
        return res.status(500).json({message: 'Internal Server Error'});
    }
};

module.exports = {forgotPassword};