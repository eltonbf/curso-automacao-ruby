Quando('eu faco um upload de um arquivo') do
     visit '/outros/uploaddearquivos'
    #  attach_file('upload', 'C:\Users\elton\Documents\_CURSOS\Automacao de Testes com Capybara, Cucumber e Ruby\capybarateste\tests\features\teste.png', make_visible: true)
     
    
    @foto = File.join(Dir.pwd, 'features/teste.png')
    attach_file('upload', @foto, make_visible: true)
    sleep 5
end