const { Sequelize } = require("sequelize");
/**
 * CREATE DATABASE ps OWNER postgres;
 * CREATE USER psps WITH ENCRYPTED PASSWORD '123456789';
 * GRANT ALL PRIVILEGES ON DATABASE ps TO psps;
 **/
const sequelize = new Sequelize("ps", "psps", "123456789", {
  host: "127.0.0.1",
  dialect: "postgres",
});

sequelize.sync();

(async () => {
  try {
    await sequelize.authenticate();
    console.log("connection established with DB");
  } catch (err) {
    console.error("Unable to connect ot DB");
  }
})();

module.exports = sequelize;
