// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SampleToken is ERC20, Ownable {

    uint256 constant _totalSupply = 1000000000 * 10 ** 18; // 1 billion total supply
    string constant _name = "Sample Coin"; // token name
    string constant _symbol = "SAMPLE"; // token symbol

    // mint the total supply either to the contract itself or to the deployer address
    constructor() ERC20(_name, _symbol) {
        _mint(msg.sender, _totalSupply); // mint the total supply to the owner
        _mint(address(this), _totalSupply); // mint the total supply to this contract
    }
}