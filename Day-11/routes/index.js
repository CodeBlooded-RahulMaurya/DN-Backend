var express = require("express");
var router = express.Router();
var registerInitialChecks = require("../middlewares/registerChecks");
var register = require("../controllers/register");
/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});
/*
 * @requires {email, password, confirmPassword } req.body
 * @description:
 * security, performance, edgecases

 * level - 2
 * JS/ SQL - THA
 
 **/
router.post("/register", registerInitialChecks, register);
module.exports = router;
