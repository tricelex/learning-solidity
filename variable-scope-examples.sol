// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


contract C {
    uint internal data = 10;

    function x() public pure returns(uint) {
        uint datax = 25;
        return datax;
    }

    function y() public view returns(uint) {
        return data;
    }
}