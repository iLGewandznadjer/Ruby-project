class Cadastro
    # FUNÇÃO PARA CADASTRAR FUNCIONÁRIOS
    def cadastrar_funcionario(lista_funcionarios)

        puts "Insira o nome: "
        nome = gets.chomp

        puts "Insira o sobrenome: "
        sobrenome = gets.chomp

        puts "Insira a idade: "
        idade = gets.chomp

        puts "Cadastre um rg: "
        identificacao = gets.chomp.to_i

        puts "Atribua uma função ao funcionario #{nome} #{sobrenome}: "
        funcao = gets.chomp

        puts "Qual será o salario deste funcionario: "
        salario = gets.chomp.to_f

        puts  "Defina a carga horária de trabalho semanal: "
        carga_horaria = gets.chomp.to_i

        funcionario = Funcionario.new(nome, sobrenome, idade, identificacao, funcao, salario, carga_horaria)
        lista_funcionarios << funcionario
        system "clear"

        puts "==================Funcionário cadastrado com sucesso!!!===================="


    end

    # FUNÇÃO PARA CADASTRAR ALUNOS
    def cadastrar_aluno(lista_alunos)

        puts "Insira o nome: "
        nome = gets.chomp

        puts "Insira o sobrenome: "
        sobrenome = gets.chomp

        puts "Insira a idade: "
        idade = gets.chomp

        puts "Cadastre um rg: "
        identificacao = gets.chomp.to_i

        puts  "Defina um numero de matricula para #{nome}#{sobrenome}: "
        numero_matricula = gets.chomp.to_i

        aluno = Aluno.new(nome, sobrenome, idade, identificacao, numero_matricula)
        lista_alunos << aluno
        
        system "clear"

        puts "==================Aluno cadastrado com sucesso!!!===================="

    end

    # FUNÇÃO PARA CADASTRAR TURMAS
    def cadastrar_turma(lista_turmas)

        puts "Insira o nome da turma: "
        nome_turma = gets.chomp

        puts "Insira o ID da turma: "
        id_turma = gets.chomp

        turma = Turma.new(nome_turma, id_turma)
        lista_turmas << turma
        
        system "clear"

        puts "==================Turma cadastrada com sucesso!!!===================="

    end

end