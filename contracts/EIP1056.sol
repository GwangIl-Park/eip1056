// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract EIP1056 {

  mapping (address=>address) private owners;

  constructor() public {
  }

  event DIDOwnerChanged(
    address indexed identity,
    address owner,
    uint previousChange
  );

  event DIDDelegateChanged(
    address indexed identity,
    bytes32 delegateType,
    address delegate,
    uint validTo,
    uint previousChange
  );

  event DIDAttributeChanged(
    address indexed identity,
    bytes32 name,
    bytes value,
    uint validTo,
    uint previousChange
  );

  function identityOwner(address identity) public view returns(address){
    address owner = owners[identity];
    require(owner != address(0), "owner null");
    return owner;
  }

  function changeOwner(address identity, address newOwner) public{
    require(identity != address(0), "identity address 0");
    require(newOwner != address(0), "newOwner address 0");
    owners[identity] = newOwner;
  }

  function changeOwnerSigned(address identity, uint sigV, bytes32 sigR, bytes32 sigS, address newOwner) public{

  }

  function validDelegate(address identity, bytes delegateType, address delegate) public view returns(bool){

  }

  function addDelegate(address identity, bytes32 delegateType, address delegate, uint validity) public{

  }

  function addDelegateSigned(address identity, uint sigV, bytes sigR, bytes32 sigS, bytes32 delegateType, address delegate, uint validity) public{

  }

  function revokeDelegate(address identity, bytes32 delegateType, address delegate) public{

  }

  function revokeDelegateSigned(address identity, uint8 sigV, bytes32 sigR, bytes32 sigS, bytes32 delegateType, address delegate) public{

  }

  function setAttribute(address identity, bytes32 name, bytes value, uint validity) public{

  }

  function setAttributeSigned(address identity, uint8 sigV, bytes32 sigR, bytes32 sigS, bytes32 name, bytes value, uint validity) public{

  }

  function revokeAttribute(address identity, bytes32 name, bytes value) public{

  }

  function revokeAttributeSigned(address identity, uint8 sigV, bytes32 sigR, bytes32 sigS, bytes32 name, bytes value) public{

  }


}
