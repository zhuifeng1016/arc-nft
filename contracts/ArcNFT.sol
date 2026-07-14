// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArcNFT {
    string public name;
    string public symbol;
    uint256 public totalSupply;
    mapping(uint256 => address) public ownerOf;
    mapping(address => uint256) public balanceOf;
    
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    
    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }
    
    function mint(address to) public returns (uint256) {
        totalSupply++;
        uint256 tokenId = totalSupply;
        ownerOf[tokenId] = to;
        balanceOf[to]++;
        emit Transfer(address(0), to, tokenId);
        return tokenId;
    }
}
