pragma solidity ^0.8.7;

contract StorageLayout {
    uint x;

    function setX(uint newX) public {
        x = newX;
    }

    function readStorage(uint i) public view returns (bytes32 content) {
        assembly {
            content := sload(i)
        }
    }
}
