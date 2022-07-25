pragma solidity ^0.5.0;

contract Adoption {

    address[16] public adopters;

    function adopt (uint petId) public returns (uint) {
        
        /* msg = Transação escrita na blockchain
           Quem escreve é o "Sender" que seria o "Dono da Conta Bancária" que envia o dinheiro
        */

        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopters() public returns (address[16] memory) {
        // Todos que adotaram os animais estarão dentro do array.
        return adopters;
    }
}