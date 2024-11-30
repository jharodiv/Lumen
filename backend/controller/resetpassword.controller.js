const bcrypt = require('bcrypt');
const User = require('../models/user.model');

const resetPassword = async (req, res) => {
    try {
        const { token, newPassword } = req.body;

        // Find the user with the matching reset token and check if the token is still valid
        const user = await User.findOne({
            resetPasswordToken: token,
            resetPasswordExpires: { $gt: Date.now() }, // Check token expiration
        });

        if (!user) {
            return res.status(400).json({ message: 'Invalid or expired token' });
        }

        // Hash the new password
        const hashedPassword = await bcrypt.hash(newPassword, 10);

        // Update the user's password and clear the reset token
        user.password = hashedPassword;
        user.resetPasswordToken = undefined;
        user.resetPasswordExpires = undefined;
        await user.save();

        return res.status(200).json({ message: 'Password reset successfully' });
    } catch (error) {
        console.error('Error resetting password:', error); // Log the exact error
        return res.status(500).json({ message: 'Internal Server Error' });
    }
};
    
module.exports = {resetPassword};