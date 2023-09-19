// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract PayPal {
    //Defining Owner Of Contract
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    //Struct mapping for request transaction and name

    struct request {
        address requestor;
        uint amount;
        string message;
        string name;
    }

    struct sendReceive {
        string action;
        uint amount;
        string message;
        address otherPartyAddress;
        string otherPArtyName;
    }

    struct userName {
        string name;
        bool hasName;
    }
    mapping(address => userName) names;
    mapping(address => request[]) requests;
    mapping(address => sendReceive[]) history;
    //Adding a name to wallet address

function addName(string memory _name) public {

    userName storage newUserName=names[msg.sender];
    newUserName.name=_name;
    newUserName.hasName=true;
}



    //Creating a request

function createRequest(address user,uint _amount,string memory _message) public{

request memory newRequest;
newRequest.requestor=msg.sender;
newRequest.amount=_amount;
newRequest.message=_message;

if(names[msg.sender].hasName){
    newRequest.name=names[msg.sender].name;
}

requests[user].push(newRequest);






}





    //Paying To Request

    //Get All all request send to user

    //git history of transaction of user
}
