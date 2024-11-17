import pool from "../config/db.js";

export const fetchClasses = async (req, res) => {
    try {
        const query = 
        `
        SELECT * FROM player_class ORDER BY class_id
        `;

        const [rows] = await pool.query(query)

        console.log(rows);
        res.status(200).json(rows);

    } catch (error) {
        console.error("Error fetching classes:", error.message);
        res.status(500).json({
            error:"An error occured when fetching classes."
        })
    }
}

