async function main() {
    const [deployer] = await ethers.getSigners();
  
    console.log("Deploying contracts with the account:", deployer.address);
  
    const paypal = await ethers.deployContract("PayPal"); //HelloWorld= Your Contract Name
  
    console.log("Token address:", await paypal.getAddress());
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });