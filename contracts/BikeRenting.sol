// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BikeRenting {
  address payable public owner;
  address payable public client;
  mapping(address => uint) public balances;
  mapping(uint => Bike) public bikes;

  struct Bike {
    string name;
    uint price;
  }

  constructor() {
    owner = payable( msg.sender);
  }

  function rentRoyalAllDay(uint _amount) public payable {
    bikes[0].name = "Royal Enfield Meteor 350";
    bikes[0].price = 1200;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentRoyalHalfDay(uint _amount) public payable {
    bikes[1].name = "Royal Enfield Meteor 350";
    bikes[1].price = 600;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentTriumphAllDay(uint _amount) public payable {
    bikes[2].name = "Triumph Trident 660";
    bikes[2].price = 800;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentTriumphHalfDay(uint _amount) public payable {
    bikes[3].name = "Triumph Trident 660";
    bikes[3].price = 400;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentBmwAllDay(uint _amount) public payable {
    bikes[4].name = "BMW R 1250 GS";
    bikes[4].price = 1400;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentBmwHalfDay(uint _amount) public payable {
    bikes[5].name = "BMW R 1250 GS";
    bikes[5].price = 700;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentApriliaAllDay(uint _amount) public payable {
    bikes[6].name = "Aprilia RS 660";
    bikes[6].price = 1000;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentApriliaHalfDay(uint _amount) public payable {
    bikes[7].name = "Aprilia RS 660";
    bikes[7].price = 500;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentDucatiAllDay(uint _amount) public payable {
    bikes[8].name = "Ducati Multistrada V4";
    bikes[8].price = 1800;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

  function rentDucatiHalfDay(uint _amount) public payable {
    bikes[9].name = "Ducati Multistrada V4";
    bikes[9].price = 900;
    require(_amount == bikes[0].price);
    balances[msg.sender] += _amount;
  }

}
