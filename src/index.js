import express from "express";
import dotenv from "dotenv";
dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

app.get("/contact-data", (req, res) => {
  res.send("Api Datass");
});

app.listen(port, () => {
  console.log("Server running in port " + port);
});
