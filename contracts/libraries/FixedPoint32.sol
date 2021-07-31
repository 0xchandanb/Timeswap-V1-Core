// SPDX-License-Identifier: MIT
pragma solidity =0.8.1;

library FixedPoint32 {
    uint8 internal constant RESOLUTION = 32;

    function shiftUp(uint256 x) internal pure returns (uint256 y) {
        y = x >> RESOLUTION;
        if (x != y << RESOLUTION) y++;
    }
}
