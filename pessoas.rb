
class Pessoas

    attr_reader :nome, :sobrenome, :idade, :identificacao

     def initialize (nome, sobrenome, idade, identificacao)
        @nome = nome
        @sobrenome = sobrenome
        @idade = idade
        @identificacao = identificacao

    end

    public def get_nomecompleto

       return "#{nome} #{sobrenome}"
    end

    public def get_identificacao

        return "#{identificacao}"
    end


end
