// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract learnFunctions {
    function add(uint a, uint b) public view returns(uint) {
        uint result = a + b;
        return result;
    }

    function multiply(uint a, uint b) public view returns(uint){
        return a * b;
    }

    function divide(uint a, uint b) public view returns(uint){
        return a / b;
    }
}