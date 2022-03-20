// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Lottery {
    address public manager;
    address[] public players; // When we mark an array as public we only can retrive one value per time not the entire array.

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable {
        players.push(msg.sender);
    }
}   