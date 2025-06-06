<?php
// /controllers/CommentsController.php

namespace Controllers;

use Core\BaseController;
use PDO;

class CommentsController extends BaseController
{
    public function list(int $ticketId): void
    {
        $stmt = $this->db->prepare("SELECT c.id, c.contenido, c.interno, c.creado_en, u.nombre AS autor FROM comentarios c JOIN usuarios u ON c.usuario_id = u.id WHERE c.ticket_id = ? ORDER BY c.creado_en ASC");
        $stmt->execute([$ticketId]);
        $comentarios = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $this->json($comentarios);
    }

    public function create(int $ticketId, array $data): void
    {
        if (!isset($data['usuario_id'], $data['contenido'])) {
            $this->json(['error' => 'Datos incompletos'], 400);
            return;
        }

        $interno = isset($data['interno']) ? (bool)$data['interno'] : false;

        $stmt = $this->db->prepare("INSERT INTO comentarios (ticket_id, usuario_id, contenido, interno) VALUES (?, ?, ?, ?)");
        $stmt->execute([
            $ticketId,
            intval($data['usuario_id']),
            trim($data['contenido']),
            $interno
        ]);

        $this->json(['mensaje' => 'Comentario agregado']);
    }
}
