// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address public owner;
    constructor() ERC20("Degen", "DGN") {
        owner = msg.sender;
    }

    function mintDGN(address add, uint256 value) public{
        _mint(add, value);
    }

    function burnDGN(address add, uint256 value) public{
        require(balanceOf(msg.sender)>=value, "You don't have required Degens.");
        _burn(add, value);
    }

    function redeemDGN(uint256 shop) public payable {
        require(balanceOf(msg.sender)>=50, "You don't have required Degens.");
        if(shop==1) transfer(owner, 50);
        if(shop==2) transfer(owner, 150);
        if(shop==3) transfer(owner, 200);
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function shopContent() public pure returns (string memory){
        return "Welcome to Shop! We have: 1. A sports car, 2. A bungalow with a swimming pool, 3. A job";
    }
}
