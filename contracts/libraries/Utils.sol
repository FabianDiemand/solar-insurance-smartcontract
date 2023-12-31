// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import "@openzeppelin/contracts/utils/Strings.sol";

/**
* @title An library for utility functions of the solar insurance contract
* @author Fabian Diemand
*
* @notice The library contains several utility functions.
*
* @custom:educational This library is intended only as an educational piece of work. No productive use is intended.
*/
library Utils {
    
    /**
     * @dev Concatenates the year and region to generate a sunshine record ID.
     * @param year The year for the record.
     * @param region The region for the record.
     * @return The generated record ID.
     */
    function getRecordId(uint256 year, string memory region) internal pure returns(string memory){
        return string.concat(Strings.toString(year), region);
    }

    /*
    * @dev Concatenates the risk and the corresponding insured hours to a string output.
    * @param riskLevel The risk level
    * @param hours The insured hours for the risk level
    * @return The generated concatenated string
    */
    function concatRiskInformation(string memory riskLevel, uint256 insuredHours) internal pure returns(string memory){
        return string.concat(riskLevel, " (", Strings.toString(insuredHours), " hours)");
    }
}