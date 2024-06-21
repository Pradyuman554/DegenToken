// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    constructor() ERC20("Degen", "DGN") {}

    function mintDGN(address add, uint256 value) public{
        _mint(add, value);
    }

    function burnDGN(address add, uint256 value) public{
        require(balanceOf(msg.sender)>=value, "You don't have required Degens.");
        _burn(add, value);
    }

    function redeemDGN(uint256 shop) public returns (string memory){
        require(balanceOf(msg.sender)>=50, "You don't have required Degens.");
        _burn(msg.sender, 50);
        if(shop==1) return "1 sports car has been added to your inventory, and 50 degens have been deducted.";
        else if(shop==2) return "1 bungalow has been added to your inventory, and 50 degens have been deducted.";
        else if(shop==3) return "1 loving partner has been added to your life, and 50 degens have been deducted.";
        else return "Invalid input";
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function shopContent() public pure returns (string memory){
        return "Welcome to Shop! We have: 1. A sports car, 2. A bungalow with a swimming pool, 3. A job";
    }
}
