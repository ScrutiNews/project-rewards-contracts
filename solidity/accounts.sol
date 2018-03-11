pragma solidity ^0.4.21;

contract Accounts {

    //link this 'Accounts' Contract to the main tokenContract
    //perhaps an array of addresses is needed to link to multiple tokens?
    address tokenContract;

    //A container for participant details
    struct Participant {
        string name; //The person's name e.g. "John Smith"
        string commonIdentifier; //An ID to link multiple accounts to same person
        bool canApprove; //Privilege to approve invoices etc...
        bool isAdmin; //Highest level privilege
    }

    //link Ethereum account addresses to participant details in a hashtable
    mapping (address => Participant) participants;

    //create an array of participant accounts with Ethereum address as the key
    address[] public participantAccounts;

    //A constructor function which sets the address of the tokenContract
    function Accounts(address _tokenContractAddress) public {

    tokenContract = _tokenContractAddress;

    }

    //publicly callable function to create new participant account
    //perhaps a new registrant could be forced to pay some ether to join? Adds capital to the token?
    function createParticipant(address _address, string _name, string _commonIdentifier, bool _canApprove) public {

        //@todo check whether participant address already exists

        participants[_address].name = _name;
        participants[_address].commonIdentifier = _commonIdentifier;
        participants[_address].canApprove = _canApprove;

        participantAccounts.push(_address) -1;
    }

    //publicly callable getter to retrieve all participant details
    //@todo make this more secure - add in an access modifier allowing admin only
    function getAllParticipants() view public returns(address[]) {
        return participantAccounts;
    }

    //publically callable getter to return participant details by the supplied Ethereum account
    function getParticipant(address _address) view public returns (string, string, bool) {
        return (participants[_address].name, participants[_address].commonIdentifier, participants[_address].canApprove);
    }

    //publicly available counter for all registered participants
    function countParticipants() view public returns (uint) {
        return participantAccounts.length;
    }

}
