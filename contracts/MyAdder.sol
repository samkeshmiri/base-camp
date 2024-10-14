// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract BasicMath {
    function adder(uint256 _a, uint256 _b)
        external
        pure
        returns (uint256 sum, bool error)
    {
        unchecked {
            uint256 result = _a + _b;
            if (result >= _a) {
                return (result, false);
            }
        }
        return (0, true);
    }

    function subtractor(uint256 _a, uint256 _b)
        external
        pure
        returns (uint256 difference, bool error)
    {
        if (_b > _a) {
            return (0, true);
        }
        return (_a - _b, false);
    }
}
