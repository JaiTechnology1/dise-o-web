<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre = htmlspecialchars($_POST["nombre"]);
    $email = htmlspecialchars($_POST["email"]);
    $mensaje = htmlspecialchars($_POST["mensaje"]);

    // Validar los datos (puedes agregar más validaciones según tus necesidades)

    // Aquí puedes realizar acciones como guardar en una base de datos o enviar un correo electrónico

    // Respuesta de éxito
    $respuesta = [
        'success' => true,
        'message' => '¡Gracias por tu mensaje! Te responderemos pronto.'
    ];

    echo json_encode($respuesta);
} else {
    // Si alguien intenta acceder directamente a este script sin enviar el formulario, redirigirlos a la página de contacto.
    $respuesta = [
        'success' => false,
        'message' => 'Acceso no autorizado.'
    ];

    echo json_encode($respuesta);
}

?>