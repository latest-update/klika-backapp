import express from "express";
import cors from 'cors'
import handler from './src/controller/handler.js'
import db from "./src/database/postgres/db.js";
import { requestParse } from "./src/request.js";

const app = express()
const database = new db()
const controller = new handler(database)

app.use(cors())
app.use(requestParse)
app.get('/musics', controller.musics)
app.get('/filters', controller.filters)
app.listen(process.env.PORT || 3009)
