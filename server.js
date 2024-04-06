import express from 'express';
import bodyParser from 'body-parser';
import axios from 'axios';
import pg from 'pg';

const app = express();
const port = 3000;
const db = new pg.Client({
    user: 'postgres',
    host: 'localhost',
    db: 'booknotes',
    password: 'kaushal22',
    port: 5432
});
db.connect();

app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: true }));

const data = [];

// async function getBookCovers() {
// const getBookCoverData = await axios.get("https://covers.openlibrary.org/b/isbn/9781544507859.json?default=false");
// const bookCoverData = getBookCoverData.data;
// const bookCoverUrl = bookCoverData.source_url;
// }

app.get("/", async (req, res) => {
    try {
        const queryResult = await db.query("SELECT * FROM books;");
        data = queryResult.rows;
    } catch (error) {
        console.log(error);
    }

    // res.render("index.ejs", { bookCover: bookCoverUrl });
});

app.listen(port, () => {
    console.log(`App is running at http://localhost:${port}`);
});