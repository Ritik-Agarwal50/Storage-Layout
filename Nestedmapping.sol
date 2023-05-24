// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Nestedmapping{
    uint x;
    mapping(uint => mapping(uint => uint)) n;

    function addToN(uint key1,uint key2,uint value) public{
        n[key1][key2]=value;
    }

    function readStorageSlot(uint i) public view returns(uint content){
        assembly{
            content := sload(i)
        }
    }

    function getLocationOfMapping(uint mapSlot, uint key) public pure returns (uint slot){
        return uint(keccak256(abi.encode(key,mapSlot)));
    }

}