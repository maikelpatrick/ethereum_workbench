pragma solidity ^0.4.24;

import "./StandardToken.sol";

contract TokenClass is StandardToken {

    string public constant name = "TokenClass";
    string public constant symbol = "CLS";
    uint8 public constant decimals = 18;
    
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));
    
    event tokenBought(address adr);
    
    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
    }
    
    function() public payable {
        emit tokenBought(msg.sender);
    }
}