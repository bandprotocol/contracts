pragma solidity 0.5.0;

import "../plugins/TCR.sol";

contract TCRFactory {
  event TCRCreated(address tcr, address core);

  function create(
    bytes8 _prefix,
    CommunityCore _core,
    VotingInterface _voting,
    uint256[] calldata _expressions
  )
    external
  {
    TCR tcr = new TCR(_prefix, _core, _voting, _expressions);
    emit TCRCreated(address(tcr), address(_core));
  }
}