$(formulario).submit(function(e) {
    e.preventDefault()

    var _nit = $('#nit').val()

    $.ajax({
        url: '../assents/php/controlador.php',
        type: 'POST',
        data: {
            pedido: 'busca_nome',
            nit: _nit
        },
        success: (res) => {
            res = JSON.parse(res)
            if (res.nome === undefined) {
                alert('NIT não encontrado!')
            } else {
                if (confirm('Este NIT pertence a ' + res.nome)) {
                    $('#user_name').html('Nome: ' + res.nome);
                    var tributoAntigo = res.tributo
                    $('#formulario').html(`<label for="tributo">Introduza o tributo:</label><input type="number" name="tributo" id="tributo" required step=".01"><input type="submit" value="Confirmar">`);
                    
                    $(formulario).submit(function(e) {
                        e.preventDefault()
                        var valor = Number($('#tributo').val()) + Number(tributoAntigo)

                        $.ajax({
                            url: '../assents/php/controlador.php',
                            type: 'POST',
                            data: {
                                pedido: 'tributar',
                                nit: _nit,
                                tributo: valor
                            }, success: ((msg) => {
                                location.href = 'index.html'
                                alert(msg)
                            })
                        })
                    })
                }
            }
        }
    })
})