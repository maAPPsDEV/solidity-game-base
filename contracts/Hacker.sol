// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Hacker {
  address public hacker;

  modifier onlyHacker {
    require(msg.sender == hacker, "caller is not the hacker");
    _;
  }

  constructor() public {
    hacker = payable(msg.sender);
  }

  function attack(address _target) public onlyHacker {}
}
