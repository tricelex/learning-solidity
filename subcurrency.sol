// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;


// This  contract allows only its creator to create new coins
// anyone can send coins to each other without a need for registration

contract Coin {
    address public minter;
    mapping(address => uint) public balances;
    
    event Sent(address from, address to, uint amount);

    
    // constructor only runs when contract is deployed
    constructor() {
        minter = msg.sender;
    }
    
    // make new coins and send to address
    // only contract owner can send coins
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }
    
    error insufficientBalance(uint requested, uint available);
    
    // send any amount of coins to an existing address
    function send(address receiver, uint amount) public {
        // require amount to be greater than x = true and then run this
        
        if (amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        
        emit Sent(msg.sender, receiver, amount);
        
    }
    
}