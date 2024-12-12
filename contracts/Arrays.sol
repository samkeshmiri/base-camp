// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Arrays {
    uint256[] public dynamicArray;

    uint256[10] public fixedArray;

    function addElemTodDynamicArray(uint256 value) external {
        dynamicArray.push(value);
    }

    function deleteElemFromdDynamicArray() external {
        dynamicArray.pop(); // doesn't return
    }
}
