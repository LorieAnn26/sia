<?php
include('database\connection.php');
$action = isset ($_GET['action']) ? $_GET['action'] : '';

if($action === 'checkout') saveProducts();

function getProducts($conn){
    $conn = $GLOBALS['conn'];

    $stmt = $conn->prepare("SELECT * FROM products");
    $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    return $rows;
}

function saveProducts(){
    $data = $_POST['data'];
    var_dump($data);
}