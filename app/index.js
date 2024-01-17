//const express = require('express') // CommonJS
import express from 'express' //EcmaModules
import usuarioRoutes from "./routes/usuarioRoutes.js";


//Crea la app
const app = express()


app.use('/', usuarioRoutes)


//Definir un puerto
const port = 3000;

app.listen(port, () => {
    console.log(`El servidor ${port}`)
})
