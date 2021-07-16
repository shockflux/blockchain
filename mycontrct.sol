pragma solidity ^0.5.0;

contract shockflux {
    
    string value; //state variable - It's actually stored on ethereum/blockchain
    address owner;
    function get() public view returns(string memory _value) {
        return value; 
    }
        
    function set(address) public {
        owner = msg.sender;
    }
    
    constructor() public {
        value = "Hello World";
    }
    
    
}