<?php
// /controllers/TicketsController.php

namespace Controllers;

use Core\BaseController;
use PDO;

class TicketsController extends BaseController
{
    public function listar(): void
    {
        $stmt = $this->db->query("SELECT t.id, t.titulo, t.estado, t.prioridad, t.creado_en, u.nombre AS cliente FROM tickets t JOIN usuarios u ON t.cliente_id = u.id");
        $tickets = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->json($tickets);
    }

    public function obtener(int $id): void
    {
        $stmt = $this->db->prepare("SELECT * FROM tickets WHERE id = ?");
        $stmt->execute([$id]);
        $ticket = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($ticket) {
            $this->json($ticket);
        } else {
            $this->json(['error' => 'Ticket no encontrado'], 404);
        }
    }

    public function crear(array $data): void
    {
        if (!isset($data['titulo'], $data['descripcion'], $data['categoria'], $data['prioridad'], $data['cliente_id'])) {
            $this->json(['error' => 'Datos incompletos'], 400);
            return;
        }

        $stmt = $this->db->prepare("INSERT INTO tickets (titulo, descripcion, categoria, prioridad, cliente_id) VALUES (?, ?, ?, ?, ?)");
        $stmt->execute([
            trim($data['titulo']),
            trim($data['descripcion']),
            trim($data['categoria']),
            trim($data['prioridad']),
            intval($data['cliente_id'])
        ]);

        $this->json(['mensaje' => 'Ticket creado correctamente']);
    }

    public function actualizar(int $id, array $data): void
    {
        $campos = [];
        $valores = [];

        if (isset($data['estado'])) {
            $campos[] = "estado = ?";
            $valores[] = $data['estado'];
        }
        if (isset($data['tecnico_id'])) {
            $campos[] = "tecnico_id = ?";
            $valores[] = $data['tecnico_id'];
        }
        if (empty($campos)) {
            $this->json(['error' => 'Sin datos para actualizar'], 400);
            return;
        }

        $valores[] = $id;
        $stmt = $this->db->prepare("UPDATE tickets SET " . implode(', ', $campos) . " WHERE id = ?");
        $stmt->execute($valores);

        $this->json(['mensaje' => 'Ticket actualizado']);
    }

    public function eliminar(int $id): void
    {
        $stmt = $this->db->prepare("DELETE FROM tickets WHERE id = ?");
        $stmt->execute([$id]);
        $this->json(['mensaje' => 'Ticket eliminado']);
    }
}
