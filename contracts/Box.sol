// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Ownable from the OpenZeppelin Contracts library
import "@openzeppelin/contracts/access/Ownable.sol";

// the Ownable contract marks the deployer account as the contract’s owner, 
// and provides a modifier called onlyOwner. When applied to a function, 
// onlyOwner will cause all function calls that do not originate from the owner account to revert.

contract Box is Ownable{
  uint256 private _value;

  // Emitted when the stored value changes
  event ValueChanged(uint256 value);

  // Stores a new value in the contract
  function store(uint256 value) public onlyOwner {
    _value = value;
    emit ValueChanged(value);
  }

  // Reads the last stored value
  function retrieve() public view returns (uint256) {
    return _value;
  }
}
