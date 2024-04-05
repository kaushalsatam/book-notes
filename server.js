import express from 'express';
import bodyParser from 'body-parser';
import axios from 'axios';
import pg from 'pg';

const app = express();
const port = 3000;

app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", async (req, res) => {
    const getBookCoverData = await axios.get("https://covers.openlibrary.org/b/isbn/9781544507859.json?default=false");
    const bookCoverData = getBookCoverData.data;
    const bookCoverUrl = bookCoverData.source_url;
    res.render("index.ejs", { bookCover: bookCoverUrl });
});

app.listen(port, () => {
    console.log(`App is running at http://localhost:${port}`);
});