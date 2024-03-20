//const express = require('express') // CommonJS
import express from 'express' //EcmaModules
import usuarioRoutes from "./routes/usuarioRoutes.js";


//Crea la app
const app = express()


app.use('/auth', usuarioRoutes)

app.set('view engine', 'pug')
apt.set('views', './views')

//Definir un puerto
const port = 3000;

app.listen(port, () => {
    console.log(`El servidor ${port}`)
})
