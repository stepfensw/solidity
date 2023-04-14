//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;
abstract contract PledgeInterface{


    //接受
    receive () external payable{

    }
    //质押
    function pledge() public virtual payable;
    //提现
    function outAmount() public virtual payable;
    //提现判断条件
    function canOut() public virtual returns (bool);

}