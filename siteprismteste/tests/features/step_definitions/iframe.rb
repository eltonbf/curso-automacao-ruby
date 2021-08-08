Quando('preencho os campos.') do
    @pagina_iframe = PaginaPadrao.new
    @pagina_iframe.load

    @pagina_iframe.preencher_campo do |iframe|
        iframe.nome.set 'Elton'
        iframe.ultimo_nome.set 'John'
    end
end