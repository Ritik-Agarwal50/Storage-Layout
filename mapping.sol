// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MappingStorage{
    uint x = 2; // stored in slot 0
    mapping(uint => uint) m; //stored in slot 1
    function addToMapp(uint key,uint value)public{
        m[key] = value;
    }

    function readStorage(uint i) public view returns(bytes32 content){
        assembly{
            content := sload(i)
        }
    }

    function getLocationOfMapping(uint mapSlot,uint key) public pure returns(uint slot){
        return uint(keccak256(abi.encode(key,mapSlot)));
    }
}