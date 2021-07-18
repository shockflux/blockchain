pragma solidity ^0.5.0;

contract test {
    
    enum size{ Tall, Grande, Venti}
    size choice;
    size constant defaultChoice = size.Tall;
    
    function getmedium() public {
        choice = size.Grande;
    }
    function getchoice() public view returns(size) {
        return choice;
    }
    function getdefaultchoice() public pure returns(uint) {
        return uint(defaultChoice);
    }
    function getsmall() public {
        choice = size.Tall;
    }
    function getlarge() public {
        choice = size.Venti;
    }
}