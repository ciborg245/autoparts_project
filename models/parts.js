'use strict';
module.exports = (sequelize, DataTypes) => {
  var parts = sequelize.define('parts', {
    name: DataTypes.STRING,
    weight: DataTypes.DOUBLE,
    price: DataTypes.DOUBLE,
    color: DataTypes.STRING
  }, {});
  parts.associate = function(models) {
    // associations can be defined here
  };
  return parts;
};