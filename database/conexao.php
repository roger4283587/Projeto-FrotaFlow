<?php

    $host = "localhost";
    $banco = "bdfrotaflow";
    $usuario = "root";
    $senha = "";

    try {
        $pdo = new PDO(
            "mysql:host=$host;dbname=$banco;charset=utf8mb4",
            $usuario,
            $senha
        );

    } catch (PDOException $e) {
        die("Erro ao conectar ao banco de dados.");
    }

?>
