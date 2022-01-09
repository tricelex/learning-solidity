// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


contract finalExercise {
    uint a = 300;
    uint b = 12;
    uint f = 47;

    function finalize() view public returns(uint)  {
        uint d = 23;
        if ( a >= a && b < f ) {
            d *= d;
            return d - b;
        } 
        
        return d;
    }

}