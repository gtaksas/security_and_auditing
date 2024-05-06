// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MyContract} from "../src/MyContract.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract MyContractTest is StdInvariant, Test {
    MyContract exampleContract;
    
    function setUp() public {
    exampleContract = new MyContract();
    targetContract(address(exampleContract));
    }

    // stateful fuzz test with foundry randomized data
    function invariant_testAlwaysReturnsZero() public {
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }
}
