document.addEventListener('click', function (e) {
    const submenu = document.querySelector('.submenu');
    const usuario = document.querySelector('.usuario');
    if (e.target !== usuario && !usuario.contains(e.target)) {
        submenu.style.display = 'none';
    }
});

// Agregar evento de clic para abrir el menú al hacer clic en "Usuario"
const usuario = document.querySelector('.usuario');
const submenu = document.querySelector('.submenu');
usuario.addEventListener('click', function () {
    if (submenu.style.display === 'none' || submenu.style.display === '') {
        submenu.style.display = 'block';
    } else {
        submenu.style.display = 'none';
    }
});