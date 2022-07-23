// SPDX-License-Identifier: UNLICENSED

// solhint-disable-next-line
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
  uint256 totalWaves;

  event NewWave(address indexed from, uint256 timestamp, string message);

  struct Wave {
    address waver;
    string message;
    uint256 timestamp;
  }

  constructor() {
    console.log("Yo yo, I am a contract and I am smart");
  }

  function wave() public {
    totalWaves += 1;
    console.log("%s has waved!", msg.sender);
  }

  function getTotalWaves() public view returns (uint256) {
    console.log("We have %d total waves!", totalWaves);
    return totalWaves;
  }
}
