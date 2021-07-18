Quando('eu marco um checkbox e um radiobox') do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    uncheck('white', allow_label_click: true)
    check('purple', allow_label_click: true)
    uncheck('purple', allow_label_click: true)
    find('label[for="purple"]').click
    choose('red', allow_label_click: true)
    choose('yellow', allow_label_click: true)
    sleep(3)
end