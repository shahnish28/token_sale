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
    
    constructor() {
        // Add options to the array statically
        option.push(Option({name: "Option A", voteCount: 0}));
        option.push(Option({name: "Option B", voteCount: 0}));
        option.push(Option({name: "Option C", voteCount: 0}));
    }

    
}
