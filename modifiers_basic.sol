pragma solidity ^0.5.0;

contract modifiers_basic {
    
    address owner;
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyowner {
        require(owner == msg.sender);
        _;
    }
    
    modifier costs(uint price) {
        if(msg.value >= price) {
            _;
        }
    }
    
    //function set() public onlyowner view returns(bool) {
    //    return true;
    //}
}

contract inheritance is modifiers_basic {
    mapping(address => bool) private registeredaddress;
    uint price;
    constructor(uint initial) public {
        price = initial;
    }
    
    function register() public payable costs(price) {
        registeredaddress[msg.sender] = true;
    } 
}