const express = require('express');
const app = express();
const dotenv = require("dotenv");

dotenv.config();
//getting variables from .env files (process.env.VVARIABLEnAME)

app.get('/', (req, res) => res.send('Hello World!'))
app.listen(process.env.PORT || 3000, () => console.log(`Example app listening on port ${process.env.PORT}!`))
