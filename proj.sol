pragma solidity ^0.4.24;

contract Coursetro {
    
    string fName;
    uint age;
    address

    function Coursetro() public {
        owner = msg.sender;
    }

    modifier onlyOnwer {
        require(msg.sender == owner);
        _;
    }
   
    event Instructor(
        string name, 
        uint age);
    
    function setInstructor(string _fName, uint _age) onlyOwner public {
        fName = _fName;
        age = _age;
        Instructor(_fName, _age);
    }
   
    function getInstructor() public constant returns (string, uint) {
        return (fName, age);
    }
    
}