class MapeandoElementoPage < SitePrism::Page
    set_url '/users/new'

    #elemento mapeado
    element :nome, '#user_name'

    #metodo para preencher
    def preencher
        nome.set 'Elton'
    end
end