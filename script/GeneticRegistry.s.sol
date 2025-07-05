// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {GeneticRegistry} from "../src/GeneticRegistry.sol";

contract GeneticRegistryScript is Script {
    GeneticRegistry public geneticRegistry;

    function setUp() public {}

    function getChainId() public view returns (uint256) {
        uint256 chainId;
        assembly {
            chainId := chainid()
        }
        return chainId;
    }

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployerAddress = vm.addr(deployerPrivateKey);
        vm.startBroadcast();

        geneticRegistry = new GeneticRegistry();

        vm.stopBroadcast();
    }
}
