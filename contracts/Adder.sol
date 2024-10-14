// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BasicMath {
    function adder(uint _a, uint _b) external pure returns (uint sum, bool error)  {
        if (_a + _b < type(uint).max) {
        return (_a + _b, false);
        } 
        return (0, true);
    }

    function subtractor(uint _a, uint _b) external pure returns (uint sum, bool error)  {
        if (_a - _b > type(uint).min) {
            return (_a - _b, false);
        }
        return (0, true);
    }
}