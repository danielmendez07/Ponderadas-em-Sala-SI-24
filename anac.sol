// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Declaração do contrato Idade
contract Idade {
    // Variável pública para armazenar a idade. Qualquer um pode visualizar seu valor.
    uint public idade;
    
    // Variável para armazenar o endereço do proprietário do contrato.
    address public donoContrato;

    // Modificador 'apenasDono' para restringir o acesso a certas funções ao proprietário do contrato.
    // Isso é útil para funções administrativas que não devem ser acessíveis por todos.
    modifier apenasDono() {
        // Verifica se o chamador da função (msg.sender) é o dono do contrato.
        // Se não for, a transação é revertida e uma mensagem de erro é mostrada.
        require(msg.sender == donoContrato, "Apenas o dono do contrato pode realizar esta operacao");
        // Continua a execução da função caso o chamador seja o dono do contrato.
        _;
    }
    
    // Construtor do contrato. Este é executado uma única vez no momento da criação do contrato.
    constructor() {
        // Define a idade inicial como 18.
        idade = 18;
        // Define o dono do contrato como o endereço que está criando o contrato.
        donoContrato = msg.sender;
    }
    
    // Função para definir uma nova idade. Restrita ao dono do contrato devido ao modificador 'apenasDono'.
    function setIdade(uint novaIdade) public apenasDono {
        // Atualiza a variável de estado 'idade' com o valor fornecido como argumento.
        idade = novaIdade;
    }
    
    // Função de visualização para obter a idade atual. Qualquer um pode chamar esta função.
    // Como é uma função de visualização, ela não modifica o estado do contrato e não consome gas quando chamada externamente.
    function getIdade() public view returns (uint) {
        // Retorna o valor atual da variável 'idade'.
        return idade;
    }
}
