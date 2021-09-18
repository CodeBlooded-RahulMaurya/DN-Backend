const { emailValidate, passwordValidate } = require("../utils/validate");
/**
 *
 * @param {*} req
 * @param {*} res
 * @param {*} next
 * @description
 *  * level - 1
 * email validate - string
 * password validate
 * password == confirm
 */

const registerInitialChecks = (req, res, next) => {
  const { email, password, confirmPassword } = req.body;
  if (
    typeof email == "string " &&
    typeof password == "string" &&
    email.length > 0 &&
    password.length > 8 &&
    confirmPassword == password &&
    emailValidate(email) &&
    passwordValidate(password)
  ) {
    next();
  } else {
    res.status(401).send("Initial check fails");
  }
};

module.exports = registerInitialChecks; 