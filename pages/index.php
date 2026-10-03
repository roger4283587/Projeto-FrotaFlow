<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../style/style_login.css">
</head>

<body>

<div id="container">

    <div class="item">

        <form id="login" method="POST" action="recebe.php">

            <h2>Login</h2>

            <input type="text" name="txtUser" placeholder="Usuário">

            <input type="password" name="txtSenha" placeholder="Senha">

            <input type="submit">

        </form>
        <div id="item-2">
        <p>Não possui cadastro? <a href="cadastro_usuario.html">cadastrar</a></p>
        </div>
    </div>

</div>

</body>
</html>