// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MyContract} from "../src/MyContract.sol";

contract MyContractTest is Test {
    MyContract exampleContract;
    
    function setUp() public {
    exampleContract = new MyContract();
    }

    // unit test
    function testIAlwaysGetZeroUnit() public {
        uint256 data = 0;
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }

    // stateless fuzz test with foundry randomized data
    function testIAlwaysGetZeroFuzz() public {
        // uint256 data = 0;
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }
}