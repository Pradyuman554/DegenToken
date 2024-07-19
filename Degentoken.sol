// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address public owner;
    mapping(uint256 => uint256) public shopItems;
    mapping(uint256 => string) public shopItemNames;

    constructor() ERC20("Degen", "DGN") {
        owner = msg.sender;
        shopItems[1] = 50;
        shopItems[2] = 150;
        shopItems[3] = 200;
        shopItemNames[1] = "A sports car";
        shopItemNames[2] = "A bungalow with a swimming pool";
        shopItemNames[3] = "A job";
    }

    function mintDGN(address add, uint256 value) public {
        _mint(add, value);
    }

    function burnDGN(address add, uint256 value) public {
        require(balanceOf(msg.sender) >= value, "You don't have required Degens.");
        _burn(add, value);
    }

    function redeemDGN(uint256 shop) public payable {
        require(balanceOf(msg.sender) >= shopItems[shop], "You don't have required Degens.");
        require(shopItems[shop] > 0, "Invalid shop item.");
        transfer(owner, shopItems[shop]);
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function shopContent() public pure returns (string memory) {
        return "Welcome to Shop! We have: 1. A sports car (50 DGN), 2. A bungalow with a swimming pool (150 DGN), 3. A job (200 DGN).";
    }
}
