$(document).ready(() => {
    $.ajax({
        url: '../assents/php/controlador.php',
        type: 'POST',
        data: {
            pedido: 'busca'
        },
        success: (res) => {
            a = 0
            res.forEach(trib => {
                tributarios.innerHTML += `<tr><td class="nit">${trib.nit}</td><td class="nome">${trib.nome}</td><td class="tributo">${trib.tributo}</td></tr>`
                a++
                if (a != 0 && a % 2 == 0) {
                    tributarios.children[a].style.background = '#1df08d'
                }
            });
        }
    })
})