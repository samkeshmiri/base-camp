// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ControlStructures {
    function fizzBuzz(uint256 _number) external pure returns (string memory) {
        if (_number % 3 == 0 && _number % 5 == 0) {
            return "FizzBuzz";
        } else if (_number % 3 == 0) {
            return "Fizz";
        } else if (_number % 5 == 0) {
            return "Buzz";
        }
        return "Splat";
    }

    error AfterHours(uint);

    function doNotDisturb(uint256 _time) external pure returns (string memory) {
        assert(_time <= 2400);

        if (_time > 2200 || _time < 800) {
            revert AfterHours(_time);
        }

        if (_time > 1200 && _time < 1259) {
            revert("At Lunch!");
        }

        if (_time <= 1199) {
            return "Morning!";
        }

        if (_time <= 1799) {
            return "Afternoon!";
        }

        return "Evening!";
    }
}
