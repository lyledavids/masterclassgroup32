pragma solidity ^0.6.2;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/token/ERC20/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/utils/Address.sol";

contract TokenFarm is ERC20{
    using Address for address;
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    IERC20 public token;

    constructor(address _token) public ERC20("cPhoenix", "cPHX") 
    {
        token = IERC20(_token);
    }
    
    function balance() public view returns (uint256)
    {
        return token.balanceOf(address(this));
    }

    function deposit(uint256 _amount) public {
        require(_amount > 0, "amount must be more than 0" );

        token.safeTransferFrom(msg.sender, address(this), _amount);
        
        _mint(msg.sender, _amount);
    }

    function withdraw(uint256 _amount) public {        
        _burn(msg.sender, _amount);

        token.safeTransfer(msg.sender, _amount);
    }
}

