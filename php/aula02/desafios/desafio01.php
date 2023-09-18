<?php

/**
 * Desafio da Aula 02
 * Criar variáveis para realizar a troca no código (texto entre [])
 * seguindo o exemplo do nome
 */

$nomeCliente = 'Kurama';
$nomeEmpresa = 'IMA Tech';
$nomeProduto = 'Camisa Imã';
$precoProduto = 200.00;
$cashBack = 0.20;

?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página dinâmica</title>
</head>
<body>
    <h1>Olá <?php echo $nomeCliente; ?></h1>
    <p>Seja bem-vindo ao site: <?php echo $nomeEmpresa; ?></p>
    <p>Seu produto <?php echo $nomeProduto; ?> no preço <?php echo $precoProduto; ?> está sendo preparado e será entregue em breve.</p>
    <p>Esta compra lhe gerou um cashback de <?php echo $cashBack * $precoProduto; ?>.</p>
</body>
</html>
