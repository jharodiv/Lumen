const express = require('express');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');

// Import user routes
const userRoutes = require('./routes/user.route');

// MongoDB connection
mongoose.connect("mongodb://localhost:27017/maharanidb",{
}).then(() => console.log("Connected to MongoDB"))
  .catch(err => console.error("MongoDB connection error:", err));

// Middleware
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Routes
app.use('/api/users', userRoutes);

// Start the server
const port = process.env.PORT || 8080;
app.listen(port, () => {
    console.log('Server running on port ' + port);
});
