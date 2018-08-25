pragma solidity ^0.4.24;

contract Courses {

    struct Instructor {
        uint age;
        string fName;
        string lName;
    }

    mapping (address => Instructor) instructors;
    address[] public instructorAccts;

    event instructorInfo(
        address addr, 
        uint age,
        string fName,
        string lName);

    function setInstructor(address _address, uint _age, string _fName, string _lName) public {
        var instructor = instructors[_address];
        
        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;

        instructorAccts.push(_address) - 1;
        instructorInfo(_address, _age, _fName, _lName);       
    }

    function getInstructors() public view  returns(address[]) {
        return instructorAccts;
    }
    
    function getInstructor(address _address) public view  returns (uint, string, string) {
        return (instructors[_address].age, instructors[_address].fName, instructors[_address].lName);
    }
    
    function countInstructors() public view  returns (uint) {
        return instructorAccts.length;
    }


}