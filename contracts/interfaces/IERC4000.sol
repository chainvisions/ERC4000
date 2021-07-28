// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.6;

interface IERC4000 {
    function poolLength() external view returns (uint256);
    function poolInfo(uint256 poolIdx) external view returns (address, address, uint256, uint256, uint256, uint256);
    function userInfo(uint256 poolIdx, address userAddress) external view returns (uint256, uint256);
    function rewardsForBlock(uint256 poolIdx, uint256 blockNum) external view returns (uint256);

    function deposit(uint256 poolIdx, uint256 amount) external;
    function withdraw(uint256 poolIdx, uint256 amount) external;
    function claim(uint256 poolIdx) external;

    event Deposit(address indexed user, uint256 indexed poolIdx, uint256 stakeAmount);
    event Withdraw(address indexed user, uint256 indexed poolIdx, uint256 stakeAmount);
    event Claim(address indexed user, uint256 indexed poolIdx, uint256 rewardAmount);
}