pragma solidity 0.5.0;

import "../BandToken.sol";

interface BandExchangeInterface {
    function convertFromEthToBand() external payable returns (uint256);
}