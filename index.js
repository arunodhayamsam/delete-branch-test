const express = require('express');

const app = express();

app.get("/api", (req,res) => {
    res.send("Hello world with new version & openshift added")
});

app.get("/listen", (req,res) => {
    res.send("Listening is working fine")
})

const port = 8080

app.listen(port, () => {
    console.log(`App listen on ${port}`)
})