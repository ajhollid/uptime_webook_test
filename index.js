const express = require("express");
const app = express();

app.get("/", async (req, res) => {
  res.status(200).json({ message: "Hello From Another World Again" });
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
