# ERCToken

This Solidity program implements an ERC20 token contract named "Prism" (PSM). The contract includes basic functionalities such as minting tokens, burning tokens, and ownership management using the Ownable pattern from OpenZeppelin.

## Description

This contract is written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The ERC20 standard defines a set of rules for tokens on Ethereum, allowing tokens to be transferred between addresses and enabling interoperability with other decentralized applications.

## Getting Started

### Executing Program

To deploy and interact with this ERC20 token contract, you can use Remix, an online Solidity IDE. Follow these steps to get started:

1. **Access Remix**: Go to the Remix website at [Remix Ethereum](https://remix.ethereum.org/).

2. **Create New File**: Click on the "+" icon in the left-hand sidebar of Remix to create a new file. Save the file with a `.sol` extension (e.g., ERCToken.sol).

3. **Copy and Paste Code**: Copy and paste the following Solidity code into the file in Remix:
   ```solidity
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

5. **Compile the Code**: Click on the "Solidity Compiler" tab in Remix, ensure the compiler version is compatible (e.g., 0.8.24), and click "Compile ERCToken.sol".
   
5. **Deploy the Contract**: After compilation, switch to the "Deploy & Run Transactions" tab in Remix. Select the ERCToken contract from the dropdown menu and deploy it.
   
6. Then go ahead and try to mint, burn, and transfer.

---
## Authors

Vashti Bauson

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
