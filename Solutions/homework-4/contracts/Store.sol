
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Store {
    uint256 public number;
    address admin;
    address admin2;

    uint8 index;
    bool flag1;
    bool flag2;
    bool flag3;

    mapping (address=>uint256) balances;

    struct payments {
        uint256 amount;
        uint256 initialAmount;
        uint256 finalAmount;
        address sender;
        address receiver;
        uint8 paymentType;
        bool valid;
        bool checked;
    }

    payments[8] topPayments;

    constructor(){}

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}