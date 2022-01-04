pragma solidity >= 0.5.0 <= 0.9.0;

contract WelcomeToSolidity {
    constructor() public{}

    function getResult(uint256 a, uint256 b) public view returns(uint) {
        uint result = a + b;
        return result;
    }
}