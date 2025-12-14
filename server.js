const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Xin chao Viet Cuong! Day la ban Deploy tu dong.");
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
