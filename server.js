import express from 'express';
import bodyParser from 'body-parser';
import axios from 'axios';
import pg from 'pg';

const app = express();
const port = 3000;
const db = new pg.Client({
    user: "postgres",
    host: "localhost",
    database: "booknotes",
    password: "kaushal22",
    port: 5432,
});
db.connect();

app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: true }));

let data = [];

app.get("/", async (req, res) => {
    try {
        const queryResult = await db.query("SELECT * FROM books;");
        data = queryResult.rows;
        console.log(data);
    } catch (error) {
        console.log(error);
    }

    // res.render("index.ejs", { bookCover: bookCoverUrl });
});

app.listen(port, () => {
    console.log(`App is running at http://localhost:${port}`);
});