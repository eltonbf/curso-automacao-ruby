Quando('eu faco cadastro') do                                                 
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Elton')
    find('#user_lastname').set('Ferreira')
    find('#user_email').send_keys('teste@teste.com')
    fill_in(id: 'user_address', with: 'Rua Pio XII')
    find('#user_university').set('Uninove')
    find('#user_profile').send_keys('QA')
    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').set('27')
    find('input[value="Criar"]').click
    sleep(5)
end                                                                           
                                                                                
Entao('verifico se fui cadastrado') do                                        
     texto = find('#notice')
     expect(texto.text).to eq 'Usuário Criado com sucesso'
end                                                                           