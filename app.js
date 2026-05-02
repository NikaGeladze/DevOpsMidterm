const express = require("express");
const path = require("path");
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));

app.get("/user/:id", (req, res) => {
  res.json({ userId: req.params.id, status: "active" });
});

app.post("/greet", (req, res) => {
  const name = req.body.name || "World";
  res.json({ message: `Hello, ${name}!` });
});

app.get("/health", (req, res) => {
  res.json({ status: "ok", timestamp: new Date().toISOString() });
});

module.exports = app;
