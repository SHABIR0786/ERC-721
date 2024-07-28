// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 public tokenCounter;
    // Create the Constructor and Pass NFT Name and NFT Symbol to ERC721

    constructor() ERC721("MyNFT", "NFT") Ownable(msg.sender) {
        tokenCounter = 0;
    }

    function createToken() public onlyOwner returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        tokenCounter++;
        return tokenCounter;
    }
}
