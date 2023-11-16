document.addEventListener("DOMContentLoaded", function() {
    const usuarioDropdown = document.querySelector(".usuario-dropdown");

    usuarioDropdown.addEventListener("click", function() {
        const dropdownContent = document.querySelector(".dropdown-content");
        dropdownContent.classList.toggle("show");
    });

    // Cierra el menú desplegable si se hace clic fuera de él
    window.onclick = function(event) {
        if (!event.target.matches(".usuario-dropdown")) {
            const dropdowns = document.querySelectorAll(".dropdown-content");
            dropdowns.forEach(function(dropdown) {
                if (dropdown.classList.contains("show")) {
                    dropdown.classList.remove("show");
                }
            });
        }
    }
});
