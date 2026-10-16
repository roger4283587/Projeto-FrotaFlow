
<?php

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    require_once "../conexao/conexao.php";

    $nome = $_POST["nome"] ?? "";
    $email = $_POST["email"] ?? "";
    $senha = $_POST["senha"] ?? "";

    $senhaHash = password_hash($senha, PASSWORD_DEFAULT);

    $sql = "INSERT INTO usuario (nome, email, senha)
            VALUES (:nome, :email, :senha)";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        "nome" => $nome,
        "email" => $email,
        "senha" => $senhaHash
    ]);

    echo "Cadastro realizado!";
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="../style/style_cadastro_usuario.css">
</head>

<body background="/images/3540174.jpg">

<div id="container">
    <div class="item">

        <form id="login" method="POST" action="cadastro_usuario.php">

            <h2>Cadastrar</h2>

            <input type="text" name="nome" placeholder="Nome" required>

            <input type="email" name="email" placeholder="E-mail" required>

            <input type="password" name="senha" placeholder="Senha" required>

            <a href="index.php"><input type="submit" value="Cadastrar"></a>

        </form>

    </div>
</div>

</body>
</html>
