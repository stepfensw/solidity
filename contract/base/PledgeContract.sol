//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;
contract PledgeContract{

    uint256 private _totalSupply;

    mapping(address=>uint256) private _balances;

    receive() external payable{
        pledge();
    }

    function pledge() public payable{
        _balances[msg.sender] += msg.value;
        _totalSupply +=msg.value;
    }

    function balanceOf(address own) public view returns (uint256){
        return _balances[own];
    }

    function totalSupply() public view returns (uint256){
        return _totalSupply;
    }

    function outAmount() public payable canOut(){
        uint256 amount = _balances[msg.sender];
        require(amount>0,"not can lt zero");
        _totalSupply -= amount;
        (bool sent,)= address(msg.sender).call{value:amount}("");
        require(sent,"not out amount");

    }

    function getBlock() public view returns (uint256){
        return block.timestamp;
    }

    modifier canOut(){
        require(block.timestamp >= 1681469400,"not can out");
        _;
    }


}