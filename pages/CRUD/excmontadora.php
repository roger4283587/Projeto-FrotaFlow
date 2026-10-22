
<?php
    require_once '../../database/conexao.php';

    $id = $_GET["id"] ?? "";

    $sql = "DELETE FROM montadora WHERE id = :id";

    $stmt = $pdo->prepare($sql);
    $stmt->execute(["id" => $id]);


    header("Location: ../montadora.php");
?>
