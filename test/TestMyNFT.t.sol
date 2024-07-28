// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {Test, console} from "forge-std/Test.sol";
import {MyNFT} from "../src/MyNFT.sol";
import {DeployMyNFT} from "../script/DeployMyNFT.s.sol";

contract TestMyNFT is Test {
    DeployMyNFT deployer;
    MyNFT myNFT;
    address owner;

    function setUp() external {
        deployer = new DeployMyNFT();
        myNFT = deployer.run();
        owner = myNFT.owner();
    }

    function testCreateToken() public {
        vm.startPrank(owner);
        myNFT.createToken();
        assertEq(myNFT.ownerOf(0), owner);
        vm.stopPrank();
    }
}
