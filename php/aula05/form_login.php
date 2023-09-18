<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <h1>Digite seu login:</h1>

    <form action="login.php" method="post">
        <div>
            <label class="form-label" >Login: </label>
            <input type="text" name="email" placeholder="Digite seu email">
        </div>
        <div>
            <label class="form-label" >Senha: </label>
            <input type="password" name="senha" placeholder="Digite sua senha">
        </div>
        <button  class="btn btn-warning">Logar</button>
        <button class="btn btn-danger" type="reset">Apagar</button>
    </form>
</body>
</html>
