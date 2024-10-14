// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ControlStructures {
    error InvalidNumber(); // declaring an error

    function compareNumbers(uint256 _number1, uint256 _number2)
        external
        pure
        returns (string memory)
    {
        // require(_number1 > 0 && _number2 > 0, "invalid data"); // assertValidData
        if (_number1 == 0 && _number2 == 0) {
            revert InvalidNumber(); // cheaper gas
        } 
        
        if (_number1 > _number2) {
            return "Num 1 > num 2";
        } else if (_number1 < _number2) {
            return "Num 1 < num 2";
        }

        return "Num 1 = num 2";
    }
}
