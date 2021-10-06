const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hellow World");
});

app.get("/sum/:a/:b", (req, res) => {
  console.log(req.query);
  res.status(200).send(res.statusCode);
});
app.listen(5000);
