// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IEmergencyConsumer {
  /**
   * @dev emitted when chainlink emergency oracle gets updated
   * @param newChainlinkEmergencyOracle address of the new oracle
   */
  event CLEmergencyOracleUpdated(address indexed newChainlinkEmergencyOracle);

  /// @dev method that returns the last emergency solved
  function emergencyCount() external view returns (int256);

  /// @dev method that returns the address of the current chainlink emergency oracle
  function chainlinkEmergencyOracle() external view returns (address);

  /**
* @dev method to update the chainlink emergency mode address
  * @param newChainlinkEmergencyOracle address of the new chainlink emergency mode oracle
  */
  function updateCLEmergencyOracle(address newChainlinkEmergencyOracle) external;

}
