require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config()

// Go to https://infura.io, sign up, create a new API key
// in its dashboard, and replace "KEY" with it


// Replace this private key with your Sepolia account private key
// To export your private key from Coinbase Wallet, go to
// Settings > Developer Settings > Show private key
// To export your private key from Metamask, open Metamask and
// go to Account Details > Export Private Key
// Beware: NEVER put real Ether into testing accounts


module.exports = {
  solidity: "0.8.19",
  networks: {
    mumbai: {
      url: process.env.API_KEY,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};