//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19; 

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract SimpleERC20Token is ERC20{

    constructor(string memory name_, string memory symbol_,uint256 totalSupply) ERC20(name_,symbol_) {
      _mint(msg.sender,totalSupply);
    }

}