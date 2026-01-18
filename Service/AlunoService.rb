require 'singleton'

class AlunoService
    include Singleton

    def initialize
        @repositorio_alunos = []
    end

    def configure(disciplina_service)
        @disciplina_service = disciplina_service
    end

    def adicionar_aluno(aluno)
        @repositorio_alunos.push(aluno)
    end

    def buscar_aluno(matricula)
        @repositorio_alunos.find { |aluno| aluno.cod_matricula == matricula }
    end

    def remover_aluno(aluno)
        @repositorio_alunos.delete(aluno)
    end

    def listar_alunos
        @repositorio_alunos.each do |aluno|
            puts "Aluno: #{aluno.cod_matricula}"
        end
    end
end