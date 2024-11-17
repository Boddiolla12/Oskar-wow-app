
import express from "express"
import dotenv from "dotenv"
import classRoutes from "./routes/classRoutes.js"

dotenv.config();
const app = express()
app.use(express.json())

app.get("/", (req, res) => {
    res.send("<h1>Select your class!")
})

app.use("/api", classRoutes);


const PORT = process.env.Port || 3000;

app.listen(PORT, () => {
    console.log(`Server kjører på: http://localhost:${PORT}`)
})
