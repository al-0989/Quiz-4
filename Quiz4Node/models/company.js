// This "model" defines the schema for the Companies

var mongoose = require("mongoose"),
    Schema = mongoose.Schema;

var CompanySchema = new Schema({
  name: {type: String, required: true},
  products: {type: Array}
});

var Company = mongoose.model("Company", CompanySchema);

module.exports = Company; // This will allow us to use it in other places
