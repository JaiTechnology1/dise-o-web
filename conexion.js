function iniciarSesion() {
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    // URL de la API de autenticación
    const authApiUrl = 'https://tu-api-autenticacion.com/login';
    

    // Datos a enviar en la solicitud
    const data = {
        username: username,
        password: password
    };

    // Configuración de la solicitud
    const requestOptions = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    };

    // Realizar la solicitud
    fetch(authApiUrl, requestOptions)
        .then(response => {
            if (!response.ok) {
                throw new Error('Error de autenticación');
            }
            return response.json();
        })
        .then(data => {
            // Manejar la respuesta exitosa (por ejemplo, redireccionar a otra página)
            console.log('Autenticación exitosa:', data);
        })
        .catch(error => {
            // Manejar errores de autenticación
            console.error('Error de autenticación:', error);
        });
}