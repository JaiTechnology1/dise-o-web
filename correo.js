function enviarMensaje() {
    // Obtener datos del formulario
    const nombre = document.getElementById('nombre').value;
    const email = document.getElementById('email').value;
    const mensaje = document.getElementById('mensaje').value;

    // Realizar la solicitud al servidor
    fetch('procesar_contacto.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `nombre=${encodeURIComponent(nombre)}&email=${encodeURIComponent(email)}&mensaje=${encodeURIComponent(mensaje)}`,
    })
    .then(response => response.json())
    .then(data => mostrarRespuesta(data))
    .catch(error => console.error('Error:', error));
}

function mostrarRespuesta(data) {
    const respuestaMensaje = document.getElementById('respuesta-mensaje');
    respuestaMensaje.innerHTML = data.message;
    respuestaMensaje.style.color = data.success ? 'green' : 'red';
}