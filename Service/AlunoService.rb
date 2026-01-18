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

    def calcular_cr(aluno)
        somatorio_notas = 0.0
        somatorio_carga_horaria = 0

        aluno.matriculas_disciplina.each do |matricula_disciplina|
            disciplina = @disciplina_service.buscar_disciplina(matricula_disciplina.key.cod_disciplina)
            carga_horaria_atual = disciplina.carga_horaria

            somatorio_notas += matricula_disciplina.nota * carga_horaria_atual
            somatorio_carga_horaria += carga_horaria_atual
        end

        if somatorio_carga_horaria == 0
            return 0.0
        end

        somatorio_notas / somatorio_carga_horaria
    end

    def listar_cr_dos_alunos
        puts "------- O CR dos Alunos é -------"
        @repositorio_alunos.each do |aluno|
            cr = calcular_cr(aluno)
            puts "#{aluno.cod_matricula} - #{cr.round(0)}"
        end
        puts "----------------------------------"
    end
end