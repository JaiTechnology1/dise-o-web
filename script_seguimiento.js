function inicializarMapa() {
    // Coordenadas de ejemplo (reemplaza con las coordenadas reales)
    var coordenadas = { lat: -34.603722, lng: -58.381592 };

    // Verifica si la API de Google Maps se cargó correctamente
    if (typeof google !== 'undefined' && google.maps) {
        // Crea un nuevo mapa
        var mapa = new google.maps.Map(document.getElementById('mapa'), {
            center: coordenadas,
            zoom: 15 // Nivel de zoom
        });

        // Crea un marcador en la posición de entrega
        var marcador = new google.maps.Marker({
            position: coordenadas,
            map: mapa,
            title: 'Ubicación de entrega'
        });
    } else {
        // Muestra un mensaje de error si la API no se ha cargado correctamente
        console.error('Error al cargar la API de Google Maps.');
    }
}