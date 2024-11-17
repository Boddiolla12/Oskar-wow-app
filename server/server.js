
import express from "express"
import dotenv from "dotenv"

dotenv.config();
const app = express()
app.use(express.json())

app.get("/", (req, res) => {
    res.send("<h1>Select your class!")
})


const PORT = process.env.Port || 3000;

app.listen(PORT, () => {
    console.log(`Servr kjører på: http://localhost:${PORT}`)
})
