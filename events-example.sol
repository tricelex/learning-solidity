// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract LearnEvents {
    
    
    // Declear the event then emit the event
    // CamelCase is a good convention
    // only use 3 index per event
    event NewTrade(
            uint256 indexed date,
            address _from,
            address indexed _to,
            uint256 indexed amount
        );
        
    function trade(address to, uint256 amount) external {
        // outside consumer can see this event through web3js
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}