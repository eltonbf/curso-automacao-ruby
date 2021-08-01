Quando('preencho o formulario.') do
    @mapeando = MapeandoElementoPage.new

    #carregando a pagina
    @mapeando.load
    #preencher do metodo
    @mapeando.preencher
    sleep 5

    #chamar só o elemento
    # @mapeando.nome.set 'Elton'
end