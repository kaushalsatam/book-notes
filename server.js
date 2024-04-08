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
let bookCovers = [];

app.get("/", async (req, res) => {
    try {
        const queryResult = await db.query("SELECT b.id, b.name, b.author, b.isbn, b.date_read, b.rating, n.book_summary FROM books b JOIN notes n ON b.id = n.book_id;");
        data = queryResult.rows;
        // console.log(data);
        // Fetch book covers asynchronously for each book
        const bookCoverPromises = data.map(async (record) => {
            const isbnNumber = parseInt(record.isbn);
            const getBookCovers = await axios.get(`https://covers.openlibrary.org/b/isbn/${isbnNumber}.json?default=false`);
            return getBookCovers.data["source_url"];
        });
        // Wait for all book cover requests to complete
        bookCovers = await Promise.all(bookCoverPromises);
        console.log(bookCovers);
        res.render("index.ejs", {
            data: data,
            bookCovers: bookCovers
        });
    } catch (error) {
        console.log(error);
    }

    // res.render("index.ejs", { bookCover: bookCoverUrl });
});

app.listen(port, () => {
    console.log(`App is running at http://localhost:${port}`);
});