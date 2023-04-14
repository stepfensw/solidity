//SPDX-License-Identifier: UNLICENSED
import "@openzeppelin/contracts/access/AccessControl.sol";
pragma solidity ^0.8.19; 
contract RoleAdmin is AccessControl{

    constructor() {
        _grantRole(0x00,msg.sender);
    }
}
