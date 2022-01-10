// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


contract learnStrings {
    string greetings = 'Hello';
    string favouriteColor = 'blue';


    function sayColor() public view returns(string memory) {
        return favouriteColor;
    }

    function changeGreetings(string memory _change) public {
        favouriteColor = _change;
    }

    function getChar() public view returns(uint) {
        bytes memory stringToBytes = bytes(favouriteColor);
        return stringToBytes.length;
    }
}