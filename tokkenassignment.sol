// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Variables to store the details about the token
    string public tokenName = "MyToken";   // The name of the token
    string public tokenAbbrv = "MTK";      // The abbreviation for the token
    uint256 public totalSupply = 0;        // The total supply of tokens

    // Mapping from address to token balance
    mapping(address => uint256) public balances;

    /**
     * @notice Mint new tokens
     * @param _to The address that will receive the new tokens
     * @param _value The number of tokens to mint
     */
    function mint(address _to, uint256 _value) public {
        // Increase the total supply by the amount being minted
        totalSupply += _value;

        // Increase the balance of the recipient address
        balances[_to] += _value;
    }

    /**
     * @notice Burn tokens
     * @param _from The address whose tokens will be burned
     * @param _value The number of tokens to burn
     */
    function burn(address _from, uint256 _value) public {
        // Check that the address has enough tokens to burn
        require(balances[_from] >= _value, "Insufficient balance to burn");

        // Decrease the total supply by the amount being burned
        totalSupply -= _value;

        // Decrease the balance of the address
        balances[_from] -= _value;
    }
}