pragma solidity ^0.5.0;

contract todolist {
    
    uint public taskcount = 0;
    constructor() public {
        createtask("eample task");
    }
    
    struct task {
        uint _id;
        string _content;
        bool completed;
    }
    
    mapping(uint => task) public tasks;
    
    function createtask(string memory _content) public {
        tasks[taskcount] = task(taskcount, _content, false);
        taskcount++;
    }
    
    function togglecompleted(uint _id) public {
        task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
    }
}
