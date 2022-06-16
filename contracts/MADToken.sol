// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title MADToken
 *
 * @dev A minimal ERC20 token contract for the Martial Art DAO (MAD) token.
 */
contract MADToken is ERC20("Martial Art DAO", "MAD") {
    uint256 private constant TOTAL_SUPPLY = 100000000000000e18;

    constructor(address genesis_holder) {
        require(genesis_holder != address(0), "Martial Art DAO Token: zero address");
        _mint(genesis_holder, TOTAL_SUPPLY);
    }
}
