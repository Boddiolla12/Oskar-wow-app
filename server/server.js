
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


const PORT = process.env.DB_PORT || 3000;

if (!process.env.PORT) {
    console.warn("Environment variable PORT is not set. Falling back to default port 3000.");
}

app.listen(PORT, () => {
    console.log(`Server kjører på: http://localhost:${PORT}`)
})
