<?php

    $nome = $_POST["txtUser"];
    $senha = $_POST["txtSenha"];

    session_start();

    $_SESSION["n"] = $nome;
    $_SESSION["s"] = $senha;

    header("Location:cadastro_onibus.php");

?>