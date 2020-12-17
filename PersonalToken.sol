// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./ERC20.sol";
import "./Ownable.sol";

// My First Contract
// Submitting from 0x4D21c7ae97E384a8128653EE3e7c3EBFd2C7d7D0

contract personalToken is ERC20, Ownable {
    constructor(
        string memory name,
        string memory symbol,
        uint256 supply
    ) public ERC20(name, symbol) {
        _mint(msg.sender, supply);

    }

    function piglatinMyName(string name) {
    return string(abi.encodePacked(name[1:],name[0],"ay"));

}
    }

    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }
}