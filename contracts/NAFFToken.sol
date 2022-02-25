// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title NAFFToken
 *
 * @dev A minimal ERC20 token contract for the NAFF token.
 */
contract NAFFToken is ERC20("Naffiti Token", "NAFF") {
    uint256 private constant TOTAL_SUPPLY = 1000000000e18;
    uint256 publicSaleListing = (2 * TOTAL_SUPPLY / 100); //20 Million (2% of initial Supply)
    address publicSaleListingWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 seedRound = (6 * TOTAL_SUPPLY / 100); //60 Million (6% of initial Supply)
    address seedRoundWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 privateRound = (8 * TOTAL_SUPPLY / 100); //80 Million (8% of initial Supply)
    address privateRoundWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 marketingRound = (1 * TOTAL_SUPPLY / 100); //10 Million (1% of initial Supply)
    address marketingRoundWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 marketMaking = (9 * TOTAL_SUPPLY / 100); //90 Million (9% of initial Supply)
    address marketMakingWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 treasury = (20 * TOTAL_SUPPLY / 100); //200 Million (20% of initial Supply)
    address treasuryWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 teamAdvisorsPartners = (21 * TOTAL_SUPPLY / 100); //210 Million (21% of initial Supply)
    address teamAdvisorsPartnersWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 marketplaceMinting = (13 * TOTAL_SUPPLY / 100); //130 Million (13% of initial Supply)
    address marketplaceMintingWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);
    uint256 ecoSystem = (20 * TOTAL_SUPPLY / 100); //200 Million (20% of initial Supply)
    address ecoSystemWalletunVested = address(0xF8211e1B616D6cF8e7597CD7F78f5796f4fA83cB);

    constructor() {
        _mint(publicSaleListingWalletunVested, publicSaleListing);
        _mint(seedRoundWalletunVested, seedRound);
        _mint(privateRoundWalletunVested, privateRound);
        _mint(marketingRoundWalletunVested, marketingRound);
        _mint(marketMakingWalletunVested, marketMaking);
        _mint(treasuryWalletunVested, treasury);
        _mint(teamAdvisorsPartnersWalletunVested, teamAdvisorsPartners);
        _mint(marketplaceMintingWalletunVested, marketplaceMinting);
        _mint(ecoSystemWalletunVested, ecoSystem);
    }
}
