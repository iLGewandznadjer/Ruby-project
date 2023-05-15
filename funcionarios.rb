require_relative "pessoas"

class Funcionario < Pessoas

    attr_reader :funcao, :salario, :carga_horaria
    def initialize(nome, sobrenome, idade, identificacao, funcao, salario, carga_horaria)
        super(nome, sobrenome, idade, identificacao)
        @funcao = funcao
        @salario = salario
        @carga_horaria = carga_horaria

    end

    def get_funcao
        return "#{@funcao}"
    end

    def get_salario
        return "#{@salario}"
    end

    def get_carga_horaria
        return "#{@carga_horaria}"
    end

    public def get_identificacao #sobreescrita do método de pessoa, foi realizada para corrigir o acesso ao objeto

        return "#{identificacao}"
    end


end
