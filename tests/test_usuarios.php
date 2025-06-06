<?php
// /tests/test_usuarios.php

require_once __DIR__ . '/../config/env_loader.php';
require_once __DIR__ . '/../core/Database.php';

use Core\Database;

header('Content-Type: application/json');

$db = Database::obtenerConexion();

try {
    // Crear rol básico si no existe
    $db->exec("INSERT IGNORE INTO roles (id, nombre) VALUES (1, 'cliente')");

    // Crear usuario dummy
    $stmt = $db->prepare("INSERT INTO usuarios (nombre, correo, password, rol_id) VALUES (?, ?, ?, ?)");
    $stmt->execute([
        'Usuario de Prueba',
        'prueba@localhost.com',
        password_hash('123456', PASSWORD_DEFAULT),
        1
    ]);

    echo json_encode(["ok" => true, "mensaje" => "Usuario de prueba creado."]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(["ok" => false, "error" => $e->getMessage()]);
}
