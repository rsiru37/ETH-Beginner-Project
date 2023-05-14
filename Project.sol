// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract MyToken {
    string public tname="CRYPTINGLE";
    string public tabbr="CRLE";
    uint public tsupply=100;
    mapping(address=>uint) public ledger;
    
    function mint(address ad, uint x) internal { // Mint Function
        tsupply+=x;
        ledger[ad]+=x;
    }

    function burn(address ad, uint x) internal { //burn Function
        if(ledger[ad]>=x){
            tsupply-=x;
            ledger[ad]-=x;
        }

    }
}
