// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERCToken is ERC20, Ownable {
    // Constructor: Initializes the ERC20 token with name "Prism" and symbol "PSM"
    constructor() ERC20("Prism", "PSM") Ownable(msg.sender) {
        // Mints 100 tokens to the contract deployer (msg.sender)
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    // Mint function: Allows the owner to mint new tokens and send them to 'to'
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function: Allows any token holder to burn (destroy) their own tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
