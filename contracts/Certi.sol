// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Certi {
    address admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Insufficient privilege");
        _;
    }

    struct certificate {
        string courseName;
        string candidateName;
        string grade;
        string date;
    }

    mapping(string => certificate) public certificateDetails;

    function newCertificate(
        string memory _certificateID,
        string memory _courseName,
        string memory _candidateName,
        string memory _grade,
        string memory _date
    ) public onlyAdmin {
        certificateDetails[_certificateID] = certificate(
            _courseName,
            _candidateName,
            _grade,
            _date
        );
    }
}
