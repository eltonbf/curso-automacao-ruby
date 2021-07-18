Before do
    Kernel.puts 'estou sendo executado ANTES de cada cenario'
    @soma = 5 + 5
end

After do
    Kernel.puts 'estou sendo executado DEPOIS de cada cenario'
end

Before '@comeco' do
    Kernel.puts 'rodei apenas o cenario com TAG comeco'
end

After '@final' do
    Kernel.puts 'rodei apenas o cenario com TAG final'
end