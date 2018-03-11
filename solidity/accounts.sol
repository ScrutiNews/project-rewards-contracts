pragma solidity ^0.4.21;

contract Accounts {

    //link this Accounts Contract to the main tokenContract
    address tokenContract;

    //A container for participant details
    struct Participant {
        string name;
        string commonIdentifier;
        bool canApprove;
    }

    //link ethereum account addresses to participant details in a hashtable
    mapping (address => Participant) participants;

    //create an array of participant accounts with ethereum address as the key
    address[] public participantAccounts;

    //publicly callable function to create new participant account
    function setParticipant(address _address, string _name, string _commonIdentifier, bool _canApprove) public {

        participants[_address].name = _name;
        participants[_address].commonIdentifier = _commonIdentifier;
        participants[_address].canApprove = _canApprove;

        participantAccounts.push(_address) -1;
    }

    //publicly callable getter to retrieve all participant details
    //@todo make this more secure
    function getAllParticipants() view public returns(address[]) {
        return participantAccounts;
    }

    //publically callable getter to return participant details by the supplied ethereum account
    function getParticipant(address _address) view public returns (string, string, bool) {
        return (participants[_address].name, participants[_address].commonIdentifier, participants[_address].canApprove);
    }

    //publicly available particpants counter
    function countParticipants() view public returns (uint) {
        return participantAccounts.length;
    }

}
