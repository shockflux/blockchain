pragma solidity ^0.5.0;

contract cont {
    
    mapping(uint => person) public people;
    uint public count;

    struct person {
        uint _id;
        string _name;
        string _lastname;
        string _email;
    }
    
    //person[] public people;
    
    function addperson(string memory _name, string memory _lastname, string memory _email) public {
        //people.push(person(_name, _lastname, _email));
        
        people[count] = person(count, _name, _lastname, _email);
        count++;
    }
    
   

}