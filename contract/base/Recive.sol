//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19; 
import "./Ownable.sol";
contract Receiveable is Ownable{
    receive() external payable {
    }

    function outAmount() public virtual onlyOwner() {
        uint amount = address(this).balance;
        (bool sent,)= owner.call{value:amount}("");
        require(sent,"not out amount");
    }
}