require_relative "funcionarios"
require_relative "aluno"
require_relative "cadastro"


# Main

lista_funcionarios = []
lista_alunos = []
lista_turmas = []

while true do
    puts "==============="
    puts "SdGE"
    puts "==============="

    puts "1. Cadastrar um Funcionário"
    puts "2. Cadastrar um Aluno"
    puts "3. Cadastrar uma Turma"
    puts "4. SAIR"

    opcao_selecionada = gets.chomp.to_i

    if opcao_selecionada == 4
        puts "Sessão encerrada!"
        break
    end

    case opcao_selecionada

        when 1
            cadastro_funcionario = Cadastro.new
            cadastro_funcionario.cadastrar_funcionario(lista_funcionarios)

        when 2
            cadastro_aluno = Cadastro.new
            cadastro_aluno.cadastrar_aluno(lista_alunos)
        when 3
            cadastro_turma = Cadastro.new
            cadastro_turma.cadastrar_turma(lista_turmas)

            puts ("Deseja cadastrar algum aluno essa turma agora? (s) para continuar (n) para inserir depois")
            resp = gets.chomp
            if resp == "s"

                if lista_alunos.empty?
                    puts ("Não existem alunos cadastrados no sistema!")
                    next

                else lista_alunos.empty?

                    lista_alunos.each do |todos_alunos|
                        # INSERIR AÇÕES PARA OS ALUNOS ENCONTRADOS NA LISTA
                        puts "Nome Completo: #{todos_alunos.get_nomecompleto }\nNumero matricula: #{todos_alunos.get_numero_matricula}"
                        # INSERIR AÇÕES PARA OS ALUNOS ENCONTRADOS NA LISTA
                    end
                end

            else resp == "n"
                next
            end

        else
            puts "opção invalida!"
            next

    end

end








