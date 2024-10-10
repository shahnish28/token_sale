// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract tokensale {
    mapping(address=>uint) public balances; 
    // This line creates a public mapping called balances that maps an Ethereum address (address) to an unsigned integer (uint), typically used to store balances or similar values.
    //The public keyword automatically creates a getter function for the balances mapping.
    uint public totalSupply;
    uint public totalraised;

    function buyTokens() public payable  { //This function is marked payable, which means it can receive Ether along with the function call.
        uint amount = msg.value;
        balances[msg.sender] += amount; //This updates the balances mapping by adding the amount (Ether sent) to the sender’s balance. The msg.sender is the address of the account that called the buyTokens function.
        totalraised += amount ;
    }
}

