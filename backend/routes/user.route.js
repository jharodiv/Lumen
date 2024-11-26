const User = require('../models/user.model')

const express = require('express')
const router = express.Router()

router.post('/signup', (req,res)=>{
    User.findOne({email:req.body.email}, (err,user)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            if(user==null){
                const user = User({
                    username:req.body.username,
                    email:req.body.email,
                    password:req.body.password,
                })
                user.save()
                .then((error)=>{
                    if(err){
                        console.log(err)
                        res.json(err)
                    }else{
                        console.log(user)
                        res.json(user)
                    }
                    console.log(user)
                })            
            }else{
                res.json({
                    message: 'Email is Already Registered'
                })
            }
        }
    })
})

router.post('/signin', (req,res)=>{
    User.findOne({email:req.body.email,password:req.body.password}, (err,user)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            res.json(user)
        }
    })
})


module.exports = router