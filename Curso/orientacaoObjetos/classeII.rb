class ClasseMae
    def correr
        puts 'a mae corre'    
    end
end

class ClasseFilha < ClasseMae
    def correr
       puts 'a filha corre' 
    end
end

objeto = ClasseFilha.new
objeto.correr