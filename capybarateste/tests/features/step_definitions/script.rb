Quando('eu uso um script') do
    visit '/outros/scroll'
    page.execute_script("window.scrollBy(0,2000)")
    sleep 5
    @result = page.evaluate_script('7 + 7');
    puts @result
end