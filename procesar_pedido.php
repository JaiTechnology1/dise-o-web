<?php
// Verificar si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos proporcionados en el formulario
    // Aquí deberías procesar la lista de productos y otros detalles del pedido.

    $direccionEnvio = $_POST["direccion"];

    // Validar y procesar la solicitud del pedido
    // Puedes implementar la lógica necesaria, como guardar la información en una base de datos, enviar confirmaciones, etc.

    // Ejemplo simple: Imprimir un mensaje de éxito
    echo "<p>¡Pedido realizado con éxito!</p>";
} else {
    // Si alguien intenta acceder directamente a este script sin enviar el formulario, redirigirlos a la página de realizar pedido.
    header("Location: realizar_pedido.html");
    exit();
}
?>