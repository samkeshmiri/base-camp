// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

// order in which we declare variables and datatype determines order of storage
contract SimpleStorage {
    // age of a person
    // uint8 0 -> 255
    uint8 public age; // class members
    // uint104 public windows; cannot take advantage of 'packing' into groups of 32 bytes,
    // order of variables is important
    uint8 public cars;

    constructor(uint8 _age, uint8 _cars) {
        age = _age;
        cars = _cars;
    }

    function updateCars(uint8 _numberOfCars) public {
        cars = _numberOfCars;
    }

    function updateAge() public {
        age++;
    }

    function adminSetAge(uint8 _age) public {
        age = _age;
    }
}
