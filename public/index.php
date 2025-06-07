<?php
// /public/index.php

ini_set('display_errors', 1);
error_reporting(E_ALL);

require_once __DIR__ . '/../config/env_loader.php';
require_once __DIR__ . '/../config/session_start.php';
require_once __DIR__ . '/../core/Database.php';
require_once __DIR__ . '/../core/BaseController.php';

spl_autoload_register(function ($clase) {
    $rutaBase = __DIR__ . '/../';
    $rutaClase = $rutaBase . str_replace(['\\', 'Controllers'], ['/', 'controllers'], $clase) . '.php';

    if (file_exists($rutaClase)) {
        require_once $rutaClase;
    }
});

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

use Controllers\UsersController;
use Controllers\TicketsController;
use Controllers\CommentsController;
use Controllers\SettingsController;
use Controllers\SLAController;
use Controllers\AuditController;
use Controllers\SecurityController;
use Core\Database;

$ruta = $_GET['ruta'] ?? '';
$metodo = $_SERVER['REQUEST_METHOD'];

switch ($ruta) {
    case 'usuarios':
        $controller = new UsersController();
        if ($metodo === 'GET') {
            if (isset($_GET['id'])) {
                $controller->obtener((int) $_GET['id']);
            } else {
                $controller->listar();
            }
        } elseif ($metodo === 'POST') {
            $data = json_decode(file_get_contents('php://input'), true);
            $controller->crear($data);
        } elseif ($metodo === 'PUT') {
            parse_str(file_get_contents('php://input'), $data);
            $id = $_GET['id'] ?? null;
            if ($id) {
                $controller->actualizar((int) $id, $data);
            }
        } elseif ($metodo === 'DELETE') {
            $id = $_GET['id'] ?? null;
            if ($id) {
                $controller->eliminar((int) $id);
            }
        }
        break;

    case 'tickets':
        $controller = new TicketsController();
        if ($metodo === 'GET') {
            if (isset($_GET['id'])) {
                $controller->obtener((int) $_GET['id']);
            } else {
                $controller->listar();
            }
        }
        break;

    case 'comments':
        $controller = new CommentsController();
        if (!isset($_GET['ticket_id'])) {
            http_response_code(400);
            echo json_encode(['error' => 'ticket_id requerido']);
            break;
        }
        $ticketId = (int) $_GET['ticket_id'];
        if ($metodo === 'GET') {
            $controller->list($ticketId);
        }
        break;

    case 'sla':
        $controller = new SLAController();
        if ($metodo === 'GET') {
            $controller->list();
        }
        break;

    case 'prueba-db':
        $db = Database::obtenerConexion();
        echo json_encode(['status' => 'ok', 'message' => 'Conexión a la base de datos establecida.']);
        break;

    default:
        http_response_code(404);
        echo json_encode(['error' => 'Ruta no encontrada']);
        break;
}
