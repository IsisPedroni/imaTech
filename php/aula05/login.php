<?php

// var_dump($_POST);

// Validação

if(strlen($_POST['email']) > 100){
    exit('Email inválido');
};

if(strlen($_POST['senha']) <= 8){
    exit('Senha inválida, sua senha deve ter mais de 8 caracteres');
};


echo 'Logado com sucesso!';