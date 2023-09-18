<?php

// variavel super globais: elas começam com $_GET OU $_POST

//  Função para visualizar conteudo interno de uma array


// var_dump($_GET);

$preco = number_format($_GET['preco_produto'], 2, ',', '.');

// echo 'Nome produto: ' . $_GET['nome_produto'];
// echo '<br>';
// echo 'Preço do produto: R$' . $preco;
// echo '<br>';
// echo 'Categoria do produto: ' . $_GET['categoria_produto'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de exibição</title>
</head>
<body>
    <div>
        <p>Preço: <?=$preco?></p>
        <p></p>
        
    </div>
</body>
</html>