const Migrations = artifacts.require('BikeRenting');

module.exports = function (deployer) {
  deployer.deploy(BikeRenting);
};
