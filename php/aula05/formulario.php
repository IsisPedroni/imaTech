<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de produto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

<!-- ACTION : CAMINHO A ONDE ESTA O SEU BACKEND
SE ELE ESTIVESSE DENTRO DE UMA PASTA SERIO BACKEND/PROCESSA_PRODUTO.PHP -->
<!-- METHOD: Reponsavel pelo o tipo de formulario o que o formulario vai fazer 
for que ele vai processar os dados -->
<!-- NAME obrigatorio!!! pois o usuario vai digitar e o name vai pegar o value e mandar para o backend -->

    <h1>Cadastre seu produto</h1>
    <form action="processa_produto.php" method="GET">
        <div>
            <label class="form-label" >Nome:</label>
            <input type="text" name="nome_produto" placeholder=" Nome produto" >
        </div>
        <div>
            <label class="form-label" >Preço:</label>
            <input type="number" name="preco_produto"  step="any" placeholder=" Nome preço">
        </div>
        <div>
            <label class="form-label">Categoria:</label>
            <select name="categoria_produto">
                <option value='1'>Roupas</option>
                <option value='2'>Casa</option>
                <option value='3'>Eletronicos</option>
            </select>
        </div>
        <button class="btn btn-success">Cadastrar</button>
        <button class="btn btn-danger" type="reset">Apagar</button>
    </form>
</body>
</html>
