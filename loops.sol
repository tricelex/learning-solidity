// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


contract loopContract {

    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];

    function checkMultiples(uint _number) public view returns (uint) {
        uint count = 0;
        
        for(uint i=1; i < numbersList.length; i++) {
            if (checkMultipleValidity(numbersList[i], _number)) {
                count++;
            }
        }
        return count;
    }

    function checkMultipleValidity(uint _num, uint _nums) public view returns (bool) {
        if (_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }


    
}

contract myLoopingPracticeContract {

    uint [] public longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] public numberList = [1, 4, 34, 56];

    function numbersListLoop(uint userNumber)public view returns (bool) {
        bool numberExists = false;
        for (uint i = 0; i < numberList.length; i++) {
            if(numberList[i] == userNumber) {
                numberExists = true;
            }
        }
        return numberExists;
    }
}