// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract GeneticRegistry {
    mapping ( bytes32 => bool ) geneticHashes;

    event HashAddded(bytes32 Hash);

    function addToRegistry(bytes32 hash) public {
      require(geneticHashes[hash] == false, "Hash already exists");
      geneticHashes[hash] = true;
      emit HashAddded(hash);
    }
    function checkAncestry(bytes32 hash1, bytes32 hash2) public {


    }
} 
