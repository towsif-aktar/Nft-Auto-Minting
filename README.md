# NFT Simple Smart Contract With Auto minting Features
The NFT Smart Contract is an ERC1155-based smart contract that allows the creation and management of a multi-token NFT collection. This contract is built with OpenZeppelin libraries for security and reliability, and it allows an owner to set a base URI for token metadata, mint specific NFTs with defined IDs and quantities, and modify the URI.

```bash
  git clone https://github.com/towsif-aktar/nft-Auto-minting.git
```

## Table of Contents:
+ **Overview**
+ **Features**
+ **Deployment**
+ **Usage**
+ **License**

## Overview
The Simple Smart Contract is an ERC1155 smart contract deployed on the Ethereum blockchain. It allows for the minting of multiple NFT tokens, each represented by unique token IDs, and stored with metadata via a customizable base URI.

## The contract includes:
+  Setting a metadata URI that can be adjusted by the owner.
+  Minting NFTs based on the constructor arguments for token IDs and their quantities.
+  Viewing and updating the base URI through functions accessible by the owner.

## Features
+ **ERC1155 Standard:** Allows for the creation of multiple types of tokens within a single smart contract.
+ **Base URI Customization:** Owner can set and update the base URI, which is used to fetch metadata for each token.
+ **Easy Minting:** Allows minting of multiple tokens with specified IDs and quantities at contract deployment.
+ **Secure Ownership:** Uses OpenZeppelin’s Ownable contract to restrict critical functions to the contract’s owner.

# Deployment
## Prerequisites:
+ **Solidity Compiler:** Ensure your environment supports Solidity ^0.8.20.
+ **Node.js & NPM:** To install and use Hardhat or Truffle or [Remix Ide](https://remix.ethereum.org/) for deployment.
+ **MetaMask Wallet:** [MetaMask](https://metamask.io/download/) For interacting with the deployed contract on a testnet/mainnet.


# Usage
## Basic Functions
+  Each token has its URI based on the base URI + token ID.
+  Call ```uri(tokenId)``` to retrieve the metadata link for a specific token.

## Set Base URI
+  Only the contract owner can update the base URI.
+  Call ```setBaseURI(newBaseURI)``` to update the base URI.

# License:
  This project is licensed under the MIT License - see the [LICENSE](https://github.com/towsif-aktar/nft-Auto-minting?tab=MIT-1-ov-file) file for details.
