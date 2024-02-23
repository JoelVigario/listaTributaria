var bt_menu = document.querySelector("#bt-menu");

function toggleMenu() {
    let menu = document.querySelector("#menu")
    menu.classList.toggle('visivel')
}

bt_menu.addEventListener('click', toggleMenu)