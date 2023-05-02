class Turma

    attr_reader :nome_turma, :id_turma, :qtn_alunos

    def initialize(nome_turma, id_turma)
        @nome_turma = nome_turma
        @id_turma = id_turma
        @qnt_alunos = []

    end

    def adicionar_aluno(aluno)
        @qtn_alunos << aluno
        aluno.associar_turma(self)
    end

end

