<?php

namespace App\Http\Controllers;

class Hello extends Controller
{
    public function exibeNome(string $nome, string $sobrenome){
        // NOME E SOBRENO NOME ESTÁ VINDO PELA URL
        // $nome = 'Ísis';
        // $sobrenome = 'Pedroni';
        return view('hello',[
            'nomeCliente' => $nome,
            'sobrenomeCliente' => $sobrenome
        ]);
    }
}
