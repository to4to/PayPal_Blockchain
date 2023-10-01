

require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");
const dotenv = require("dotenv");

dotenv.config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",

  networks:{

mumbai:{

  url:,
  accounts: [process.env.PRIVATE_KEY],


},

  },

  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
};
