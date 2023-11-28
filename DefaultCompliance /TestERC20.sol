// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.20;

import "./ERC20Pausable.sol";
import "./Ownable.sol";

contract TestERC20 is Ownable, ERC20Pausable {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    function pause() public onlyOwner {
        _pause();
    }

    function mint(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function unpause() public onlyOwner {
        _unpause();
    }

}
