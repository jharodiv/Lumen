const mongoose = require('mongoose')

const Schema = mongoose.Schema

new newSchema = new Schema({
    emails:String,
    password:String,
})

module.exports = mongoose.model('User', newSchema)