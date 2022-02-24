// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title NAOToken
 *
 * @dev A minimal ERC20 token contract for the NAFF token.
 */
contract NAFFToken is ERC20("Naffiti Token", "NAFF") {
    uint256 private constant TOTAL_SUPPLY = 1000000000e18;
    uint256 publicSaleListing = (2 * TOTAL_SUPPLY / 100); //20 Million (2% of initial Supply)
    uint256 seedRound = (6 * TOTAL_SUPPLY / 100); //60 Million (6% of initial Supply)
    uint256 privateRound = (8 * TOTAL_SUPPLY / 100); //80 Million (8% of initial Supply)
    uint256 marketingRound = (1 * TOTAL_SUPPLY / 100); //10 Million (1% of initial Supply)
    uint256 marketMaking = (9 * TOTAL_SUPPLY / 100); //90 Million (9% of initial Supply)
    uint256 treasury = (20 * TOTAL_SUPPLY / 100); //200 Million (20% of initial Supply)
    uint256 teamAdvisorsPartners = (21 * TOTAL_SUPPLY / 100); //210 Million (21% of initial Supply)
    uint256 marketplaceMinting = (13 * TOTAL_SUPPLY / 100); //130 Million (13% of initial Supply)
    uint256 ecoSystem = (20 * TOTAL_SUPPLY / 100); //200 Million (20% of initial Supply)

    constructor(address genesis_holder) {
        require(genesis_holder != address(0), "NAFFToken: zero address");
        _mint(genesis_holder, TOTAL_SUPPLY);
    }
}
