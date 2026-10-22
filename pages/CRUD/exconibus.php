
<?php
    require_once '../../database/conexao.php';

    $id = $_GET["id"] ?? "";

    $sql = "DELETE FROM onibus WHERE id = :id";

    $stmt = $pdo->prepare($sql);
    $stmt->execute(["id" => $id]);


    header("Location: ../cadastro_onibus.php");
?>
