Quando('acesso a url') do
    @home = PaginaInicial.new
    @home.load
    sleep (5)
end

Entao('verifico se estou na pagina inicial') do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url:true)
end