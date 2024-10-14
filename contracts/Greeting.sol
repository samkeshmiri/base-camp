// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract Greeting {
    function sayHello(string memory _name)
        external
        pure
        returns (string memory, string memory)
    {
        return ("hello ", _name);
    }
}

// pure function doesn't access the state of the contract
