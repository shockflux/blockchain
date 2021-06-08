pragma solidity ^0.5.0;

contract property {
    
    address ContractOwner;
    
    struct propertydetails {
        uint _prodID;
        address CurrentOwner;
        string _PropertyAddr;
        address[] PrevOwner;
    }
    
    mapping(uint => propertydetails) public details;
    
    constructor() public {
        ContractOwner = msg.sender;
    }
    
    function uploadproperty(uint _prodID, address _CurrentOwner, string memory _PropertyAddr) public returns(bool) {
        address[] memory array;
        details[_prodID] = propertydetails(_prodID, _CurrentOwner, _PropertyAddr, array);
        return true;
    }
    
    function transfer(uint _prodID, address _NewOwner) public returns (bool) {
        require(details[_prodID].CurrentOwner == msg.sender, "YOU ARE NOT THE OWNER OF THIS PROPERTY");
        require(details[_prodID].CurrentOwner != _NewOwner);
        details[_prodID].PrevOwner.push(details[_prodID].CurrentOwner);
        details[_prodID].CurrentOwner = _NewOwner;
        return true;
    }
    
    function propertydetail(uint _prodID) public view returns(string memory PROPERTY_ADDRESS, address CURRENT_OWNER, address[] memory PREVIOUS_OWNER){
        return(details[_prodID]._PropertyAddr, details[_prodID].CurrentOwner, details[_prodID].PrevOwner);
    }
}
