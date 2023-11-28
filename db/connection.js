const pg = require("pg");

const db = new pg.Client({
  connectionString: process.env.DATABASE_URL || "",
  ssl: process.env.DATABASE_URL ? { rejectUnauthorized: false } : false
});

db
  .connect()
  .catch(e => console.log(`Error connecting to Postgres server:\n${e}`));

module.exports = db;
