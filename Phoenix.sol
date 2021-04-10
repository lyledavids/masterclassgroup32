pragma solidity ^0.6.2;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() public ERC20("Phoenix", "PHX"){
        _mint(msg.sender, 1000000000000000000000000);
    }
}
