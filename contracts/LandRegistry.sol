// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract LandRegistry {

  address public admin;

  struct Land {

    address landOwner;
    uint256 amount;
    uint256 size;
    string place;
    bool isRegistered;
  }

  uint public landCounter;

  constructor() {
    admin = msg.sender;
  }

  mapping(uint => Land) public lands;
  mapping(address => uint[]) public ownerLands;

  modifier onlyAdmin() {
    require(msg.sender == admin, 'Not Admin');
    _;
  }
  modifier onlyLandOwner(uint landId) {
    require(msg.sender == lands[landId].landOwner, 'Not the owner of the land');
    _;
  }

  function Register(address _landOwner, string memory _place, uint amount ) public {
    require(_landOwner != address(0), 'Invalid owner address');
    require(bytes(_place).length > 0, 'Location cannot be empty');
    require(_amount > 0, 'Price must be greater than zero');

    landCounter++;
    lands[landCounter] = Land(landCounter, _place, _amount, _landOwner, true) // creating a new Land struct 
    ownerLands[_landOwner].push(landCounter);
  }


}