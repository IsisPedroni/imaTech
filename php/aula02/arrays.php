<?php

$alunas = [
    'Ana Paula','Ísis','Bergamota','Kurama'
];

echo $alunas[2];
echo "\n";

$cliente = [
    'nome' => 'Ana Paula',
    'email' => 'anaPaula@gmail.com',
    'idade' => 20 . ' anos',
    'ativa' => false,
];

echo $cliente['idade'];

// aqui mostra todo o array
print_r ($cliente);

foreach($alunas as $alunas){
    echo "\n O nomes das aulas são \n" .$alunas;
    
}