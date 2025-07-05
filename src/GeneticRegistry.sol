// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract GeneticRegistry {
    mapping ( address id => mapping ( bytes32 genomeHash => bytes32 treeHash)) hashData;

    event HashAddded(address userId, bytes32 genomeHash, bytes32 treeHash);
    event TreeHashUpdated(address userId, bytes32 treeHash);

    function addToRegistry(address userAddress, bytes32 genomeHash, bytes32 treeHash) public {
      require(hashData[userAddress][genomeHash] == 0, "Genome data already exists for user");
      hashData[userAddress][genomeHash] = treeHash;
      emit HashAddded(userAddress, genomeHash, treeHash);
    }

   //add user validation later
   function updateTreeHash(address userAddress, bytes32 genomeHash, bytes32 treeHash) public {
     require(hashData[userAddress][genomeHash] != 0,"treeHash does not exist yet");
     hashData[userAddress][genomeHash] == treeHash;
     emit TreeHashUpdated(userAddress,treeHash);
   }
} 
