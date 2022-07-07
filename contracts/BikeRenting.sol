// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BikeRenting {
  address payable public owner;
  address payable public client;
  mapping(address => uint) public balances;
  string public RoyalEnfield;
  uint public RoyalEnfieldPrice;
  string public Triumph;
  uint public TriumphPrice;
  string public BMW;
  uint public BMWPrice;
  string public Aprilia;
  uint public ApriliaPrice;
  string public Ducati;
  uint public DucatiPrice;

  constructor() {
    owner = payable( msg.sender);
    RoyalEnfield = "Royal Enfield Meteor 350";
    RoyalEnfieldPrice = 1200;
    Triumph = "Triumph Trident 660";
    TriumphPrice = 800;
    BMW = "BMW R1250 GS";
    BMWPrice = 1400;
    Aprilia = "Aprilia RS 660";
    ApriliaPrice = 1000;
    Ducati = "Ducati Multistrada V4";
    DucatiPrice = 1800;
  }

  function rentRoyal(uint _value, address payable _client) public {
    _value = RoyalEnfieldPrice;
    _client.transfer(_value);
  }

}
