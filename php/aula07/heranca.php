<?php

// Uma classe abstrata é um modelo . Ela não pode ser usada diretamente para criar objetos.

abstract class ContaCorrente {
    protected float $saldo;
    public string $nome;
    
    public function __construct(float $saldo){
        $this->saldo = $saldo;
    }

    public function adiciconarSaldo(float $saldo){
        $this->saldo += saldo;
    }

    public function retiraSaldo(float $saldo){
        $this->saldo -= $saldo;
    }
}

class ContaCorrentePF extends ContaCorrente{
    public string $cpf;

}

class ContaCorrentepj extends ContaCorrente{
    public string $cnpj;
    protected float $lis = 10_000;


    // Polimorfismo : sobrescrita
    public function retiraSaldo(float $saldo){
        if($this->saldo === 0){
            $this->lis -= $saldo;
        }else{
           parent::retiraSaldo($saldo);
        }
    }
}


// A class abstract não vai permitir isso
// $contaCorrente = new contaCorrente(200);

$contaPF = new ContaCorrentePF(2000);
$contaPF->cpf ="031.201.333-13";
$contaPF->adiciconarSaldo(200);

$contaPJ = new ContaCorrentePF(2000);
$contaPJ->cnpj = '88.427.489.1110-23';
$contaPJ->adiciconarSaldo(200);