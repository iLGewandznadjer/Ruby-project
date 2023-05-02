require_relative "pessoas"
require_relative "turma"

class Aluno < Pessoas

    attr_reader :numero_matricula

    def initialize (nome, sobrenome, idade, identificacao, numero_matricula)
        super(nome, sobrenome, idade, identificacao)
        @numero_matricula = numero_matricula
        @turma = nil
    end

    def associar_turma(turma)
        @turma = turma
    end

    def get_turma
        return "#{turma}"
    end


    def get_numero_matricula
        return "#{numero_matricula}"
    end

end
