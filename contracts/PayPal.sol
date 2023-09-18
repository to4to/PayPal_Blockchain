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

    //Creating a request

    //Paying To Request

    //Get All all request send to user

    //git history of transaction of user
}
