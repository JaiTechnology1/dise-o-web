<?php
// Verificar si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos proporcionados en el formulario
    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $email = $_POST["email"];

    // Validar y procesar la actualización del perfil
    // Aquí deberías implementar la lógica para actualizar la información del usuario en la base de datos.

    // Ejemplo simple: Imprimir un mensaje de éxito
    echo "<p>¡Perfil actualizado con éxito!</p>";
} else {
    // Si alguien intenta acceder directamente a este script sin enviar el formulario, redirigirlos a la página de actualización de perfil.
    header("Location: actualizar_perfil.html");
    exit();
}
?>