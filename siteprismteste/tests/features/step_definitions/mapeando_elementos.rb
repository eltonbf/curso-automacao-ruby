Quando('preencho o formulario.') do
    home.load
  
    #preencher do metodo
    @home.preencher
    sleep 5

    #chamar só o elemento
    # @mapeando.nome.set 'Elton'
end