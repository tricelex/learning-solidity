pragma solidity >= 0.7.0 < 0.9.0;

contract learnFunctions {
    function addValues() public view returns(uint) {
        uint a = 2;
        uint b = 3;
        uint result = a + b;
        return result;
    }
    function multiplyCalculator(uint a, uint b) public view returns(uint){
        return a * b;
    }
}