<?php

// conta corrente
class ContaCorrente {


    // Encapsular é não dar acesso direto a certas propriedades: o que define o que é um encapsulamento Protected, __Construct, depois de  criamos o precismos cria um metodo(function) para que possamos ter acesso ao valor 

    // Encapsulamento: É como colocar seu código em uma caixa e fornecer apenas algumas aberturas (métodos) para outras partes do código usarem. Isso ajuda a proteger seus dados e evitar que eles sejam bagunçados.

    // Protected: É um tipo de abertura que permite que classes relacionadas usem seus dados, mas mantém esses dados fora do alcance de todo mundo.
    
    // __construct (construtor): É como um processo de inicialização quando você cria um objeto, onde você define coisas importantes que ele precisa começar.
    
    // Métodos para acessar o valor: Em vez de deixar outras partes do código pegarem diretamente os valores de suas variáveis, você cria pequenas funções (métodos) que fazem isso de uma maneira controlada. É como usar uma máquina de venda automática em vez de pegar algo diretamente da prateleira.

    protected float $saldo;

    public function __construct(float $saldo)
    {
        $this->saldo = $saldo;
    }


    public function retirarSaldo(float $valor){
        $this ->saldo -= $valor;
    }

    public function adicionarSaldo(float $valor){
        $this->saldo += $valor;
    }

    public function consultarSaldo(): float
    {
        return $this->saldo;
    }

}


// Construtor é a forma de icicializar valores diretamente na criação mais conhecida como instancia de uma classe()

$contaCorrente = new ContaCorrente(5000);
$contaCorrente->retirarSaldo(4980);
$contaCorrente->adicionarSaldo(2000);

echo 'A Nubia está agora com: ' . $contaCorrente->consultarSaldo();