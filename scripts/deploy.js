const hre= require("hardhat");


async function main(){




const Paypal= await hre.ethers.getContractFactory("PayPal");
const paypal= await Lock.deploy();


await paypal.deployed(); 



console.log("Paypal deployed to:", paypal.address);





}