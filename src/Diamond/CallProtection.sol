// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./LibDiamond.sol";

contract CallProtection {
    modifier protectedCall() {
        require(
            msg.sender == LibDiamond.diamondStorage().contractOwner ||
            msg.sender == address(this), "NOT_ALLOWED"
        );
        _;
    }
}