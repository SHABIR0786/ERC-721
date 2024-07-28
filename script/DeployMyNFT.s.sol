// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

import {Script} from "forge-std/Script.sol";
import {MyNFT} from "../src/MyNFT.sol";

contract DeployMyNFT is Script {
    function run() external returns (MyNFT) {
        vm.startBroadcast();
        MyNFT myNFT = new MyNFT();
        vm.stopBroadcast();
        return myNFT;
    }
}
