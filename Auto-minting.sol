// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Graceful is ERC1155, Ownable {
    using Strings for uint256;

    // Base URI for metadata
    string private _baseTokenURI;

    string public name = "Graceful NFT Collection";

    // Constructor
    constructor(
        string memory _initialBaseURI, 
        uint256[] memory tokenIds, 
        uint256[] memory quantities
    ) 
        ERC1155(_initialBaseURI)
        Ownable(msg.sender) // Pass the deployer's address to the Ownable constructor
    {
        _baseTokenURI = _initialBaseURI;

        // Mint tokens to the deployer (owner)
        require(tokenIds.length == quantities.length, "Token IDs and quantities length mismatch");
        for (uint256 i = 0; i < tokenIds.length; i++) {
            _mint(msg.sender, tokenIds[i], quantities[i], ""); // Mint specified quantity of each token
        }
    }

    // Override URI function to use base URI and token ID
    function uri(uint256 tokenId) public view virtual override returns (string memory) {
        return string(abi.encodePacked(_baseTokenURI, tokenId.toString(), ".json"));
    }

    // Function to set the base URI (can only be called by the owner)
    function setBaseURI(string memory newBaseURI) external onlyOwner {
        _baseTokenURI = newBaseURI;
    }

    // Function to retrieve the base URI
    function getBaseURI() external view returns (string memory) {
        return _baseTokenURI;
    }
}
