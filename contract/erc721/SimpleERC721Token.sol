//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19; 

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
/**
 * @dev Implementation of https://eips.ethereum.org/EIPS/eip-721[ERC721] Non-Fungible Token Standard, including
 * the Metadata extension, but not including the Enumerable extension, which is available separately as
 * {ERC721Enumerable}.
 */
contract SimpleERC721Token is ERC721  {

  constructor(string memory name_, string memory symbol_) ERC721(name_,symbol_) {
      
  }
  
}