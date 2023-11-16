<?php
// Verificar si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener el correo electrónico proporcionado en el formulario
    $email = $_POST["email"];

    // Validar y procesar la solicitud de restablecimiento de contraseña
    // Aquí deberías implementar la lógica para enviar un correo con las instrucciones de restablecimiento
    // y posiblemente actualizar la base de datos con un token de restablecimiento.

    // Ejemplo simple: Imprimir un mensaje de éxito
    echo "<p>Se han enviado instrucciones de restablecimiento a $email. Revise su correo electrónico.</p>";
} else {
    // Si alguien intenta acceder directamente a este script sin enviar el formulario, redirigirlos a la página de restablecimiento.
    header("Location: restablecer.html");
    exit();
}
?>