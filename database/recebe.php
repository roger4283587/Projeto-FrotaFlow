
<?php

    session_start();

    require_once "conexao.php";

    $nome = $_POST["txtUser"] ?? "";
    $senha = $_POST["txtSenha"] ?? "";

    $sql = "SELECT * FROM usuario WHERE nome = :nome";

    $stmt = $pdo->prepare($sql);

    $stmt->execute([
        "nome" => $nome
    ]);

    $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($usuario && password_verify($senha, $usuario["senha"])) {

        $_SESSION["n"] = $usuario["nome"];

        header("Location: ../pages/cadastro_onibus.php");
        exit;

    } else {
        echo "Nome ou senha incorretos!";
    }

?>
