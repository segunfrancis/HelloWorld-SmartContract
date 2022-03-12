// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {

    struct Person {
        string name;
        uint8 age;
    }

    Person private sPerson;

    constructor(Person memory person) {
        sPerson = person;
    }

    event Values(string oldName, string newName);

    function viewName() public view returns(string memory) {
        return sPerson.name;
    }

    function viewAge() public view returns(uint8) {
        return sPerson.age;
    }

    function updateName(string memory newName) public {
        string memory oldName = sPerson.name;
        sPerson.name = newName;
        emit Values(oldName, newName);
    }
}
