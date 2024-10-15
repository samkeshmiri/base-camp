// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract EmployeeStorage {
    string public name;
    uint16 private shares;
    uint24 private salary;
    uint256 public idNumber;

    constructor() {
        name = "Pat";
        shares = 1000;
        salary = 50000;
        idNumber = 112358132134;
    }

    function viewSalary() public view returns (uint24) {
        return salary;
    }

    function viewShares() public view returns (uint16) {
        return shares;
    }

    error TooManyShares(uint16);

    function grantShares(uint16 _newShares) external {
        if (_newShares > 5000) {
            revert("Too many shares");
        }
        uint16 temp = shares + _newShares;

        if (temp > 5000) {
            revert TooManyShares(temp);
        }

        shares = temp;
    }

    function checkForPacking(uint256 _slot) public view returns (uint256 r) {
        assembly {
            r := sload(_slot)
        }
    }

    function debugResetShares() public {
        shares = 1000;
    }
}
