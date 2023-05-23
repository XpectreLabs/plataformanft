// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import './ERC721Connector.sol';

contract Xpectrelabs is ERC721Connector {

    // matriz para guardar nuestros nfts
    string[] public XpectrelabsNFTS;

    mapping(string => bool) _xpectrelabsNFTExists;

    function mint(string memory _xpectrelabs) public {

        require(!_xpectrelabsNFTExists[_xpectrelabs], 'Error - token already exists');

        XpectrelabsNFTS.push(_xpectrelabs);
        uint _id = XpectrelabsNFTS.length -1;

        _mint(msg.sender, _id);

        _xpectrelabsNFTExists[_xpectrelabs] = true;
    }

    constructor() ERC721Connector('XpectrelabsNFTS','XPTL') {

    }
}