// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Cert {
    address admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Access Denied");
        _;
    }

    struct Certificate {
        string name;
        string course;
        string grade;
        string date;
    }

    mapping(uint256 => Certificate) public Certificates;

    function issue(
        uint256 _id,
        string memory _name,
        string memory _course,
        string memory _grade,
        string memory _date
    ) public onlyAdmin {
        Certificates[_id] = Certificate(_name, _course, _grade, _date);
    }
}
