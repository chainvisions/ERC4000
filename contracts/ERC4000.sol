// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.6;

/// @title ERC4000 Reward Pool
/// @author Chainvisions
/// @notice Implementation of an ERC4000 reward pool.

contract ERC4000 {
    struct Pool {
        address stakingToken;   // Token that can be staked in the pool.
        address rewardToken;    // Reward token distributed by the pool.
        uint256 stakedAmount;   // Amount of `stakingToken` staked in the pool.
        uint256 rewardAmount;   // Amount of rewards in the pool.
        uint256 rewardPerBlock; // Rewards distributed every block
        uint256 startBlock;     // Block for when rewards start on the pool.
    }

    struct User {
        uint256 stakedAmount;   // Amount staked by the user in the pool.
        uint256 rewardAmount;   // Unwithdrawn rewards that are credited to the user.
    }

    /// @notice All of the pools on the contract.
    Pool[] public poolInfo;

    /// @notice Info about the user in each pool.
    mapping(uint256 => mapping(address => User)) public userInfo;
}