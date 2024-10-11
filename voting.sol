pragma solidity ^0.8.0;

contract Voting{
    struct Option{
        string name;
        uint voteCount;
    }

    Option[] public option; //in Solidity declares a dynamic array of a custom data type called Option

    function voteForOption(uint optionIndex) public {
        option[optionIndex].voteCount +=1;
    }

    
}
