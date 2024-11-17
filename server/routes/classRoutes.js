import express from "express";
import { fetchClasses } from "../controllers/classController.js";

const router = express.Router();

router.get("/classes", fetchClasses);

export default router