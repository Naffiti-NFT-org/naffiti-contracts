// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title NAFFToken
 *
 * @dev A minimal ERC20 token contract for the NAFF token.
 */
contract NAFFToken is ERC20("Naffiti Token", "NAFF") {
    uint256 private constant TOTAL_SUPPLY = 1000000000e18; // Total initial Supply 
    uint256 publicSaleListing = (2 * TOTAL_SUPPLY / 100); //20 Million (2% of initial Supply)
    address publicSaleListingWalletunVested = address(0x8582DEEfBBAa1F53018A5A8C0E85bCd0af1502Be);
    uint256 seedRound = (6 * TOTAL_SUPPLY / 100); //60 Million (6% of initial Supply)
    address seedRoundWalletunVested = address(0x578FE5d378fD9c2E8be430a36100BBD296c1F248);
    uint256 privateRound = (8 * TOTAL_SUPPLY / 100); //80 Million (8% of initial Supply)
    address privateRoundWalletunVested = address(0x650D1cA514964565219e5f7f3AaA51fc311daD92);
    uint256 marketingRound = (1 * TOTAL_SUPPLY / 100); //10 Million (1% of initial Supply)
    address marketingRoundWalletunVested = address(0x55e6929bb898B1b59e58538E687ff94641dE6b26);
    uint256 marketMaking = (9 * TOTAL_SUPPLY / 100); //90 Million (9% of initial Supply)
    address marketMakingWalletunVested = address(0xd33A8c19ad2752779810A1A3C9a9240Ee1A83c95);
    uint256 treasury = (20 * TOTAL_SUPPLY / 100); //200 Million (20% of initial Supply)
    address treasuryWalletunVested = address(0x70DFD6e3C0e111D066d2678C4E6bF35c50F243b2);
    uint256 teamAdvisorsPartners = (21 * TOTAL_SUPPLY / 100); //210 Million (21% of initial Supply)
    address teamAdvisorsPartnersWalletunVested = address(0xdD88B4224e6b4AC27b641fA5Fe0f4bDfc0A6FD84);
    uint256 marketplaceMinting = (13 * TOTAL_SUPPLY / 100); //130 Million (13% of initial Supply)
    address marketplaceMintingWalletunVested = address(0xdC624eAE2220f4f932A8B9dF26045ad94616cec3);
    uint256 ecoSystem = (20 * TOTAL_SUPPLY / 100); //200 Million (20% of initial Supply)
    address ecoSystemWalletunVested = address(0xc8dc139F43147347863F2c754252C5b087234A3d);

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
