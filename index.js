const express = require('express');

const app = express();

app.get("/api", (req,res) => {
    res.send("Hello world with new version")
});

const port = 8080

app.listen(port, () => {
    console.log(`App listen on ${port}`)
})