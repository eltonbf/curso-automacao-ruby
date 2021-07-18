Quando('entro no iframe e preencho os campos') do                             
    visit '/mudancadefoco/iframe'

    #mudanca de foco para o iframe
    within_frame('id_do_iframe') do
        #iremos fazer as acoes dentro do iframe
        fill_in(id: 'first_name', with: 'John')
        fill_in(id: 'last_name', with: 'Ferreira') 
        sleep(3)
    end
end                                                                           
                                                                                
Quando('entro no modal e verifico o texto') do                                
     visit '/mudancadefoco/modal'
     find('a[href="#modal1"]').click

     within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eq 'Modal Teste'
     end
     sleep(3)
end                                                                           
                                                                                
Quando('fecho o modal') do                                                    
    within('#modal1') do
       find('.modal-close').click
     end
     sleep(2)
end                                                                           