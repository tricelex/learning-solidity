// this is where our code goes

pragma solidity >=0.7.0 <0.9.0;

// create a contract that can store data and return the dataa back

// be able to do the following

//   1. recieve information, 2. store information and 4. return the infoormation back 

contract simpleStorage {
    //  write all the code here - functions and state
    
    uint storeData;
    
    function set(uint x) public {
        storeData =  x * 5;
    }
    
    function get() public view returns (uint) {
        return storeData;
    }
         
}