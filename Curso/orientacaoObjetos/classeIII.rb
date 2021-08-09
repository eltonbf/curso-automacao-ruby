module ModuleName
    #serve para agrupar classes
    #serve para agrupar constantes
    #serve para agrupar metodos

    #ele e muito parecido com classe
    #ele nao pode ser estanciado
    #modulo nao pode ser herdado

    def metodo_padrao
        puts 'eu sou um modulo'
      
    end
end

class ClassName
    include ModuleName    
end

objeto = ClassName.new
objeto.metodo_padrao