require 'singleton'

class CursoService
    include Singleton

    def initialize
        @repositorio_cursos = []
    end

    def configure(aluno_service)
        @aluno_service = aluno_service
    end

    def adicionar_curso(curso)
        @repositorio_cursos.push(curso)
    end

    def buscar_curso(cod_curso)
        @repositorio_cursos.find { |curso| curso.cod_curso == cod_curso }
    end

    def remover_curso(curso)
        @repositorio_cursos.delete(curso)
    end

    def listar_cursos
        @repositorio_cursos.each do |curso|
            puts "Curso: #{curso.cod_curso}"
        end
    end

    def calcular_cr_do_curso(curso)
        total_alunos = curso.alunos.size
        somatorio_CRs = 0.0

        curso.alunos.each do |aluno|
            cr_aluno = @aluno_service.calcular_cr(aluno)
            somatorio_CRs += cr_aluno
        end

        if total_alunos == 0
            return 0.0
        end
        somatorio_CRs / total_alunos
    end

    def listar_cr_dos_cursos
        puts "------- O CR dos Cursos é -------"
        @repositorio_cursos.each do |curso|
            cr_curso = calcular_cr_do_curso(curso)
            puts "#{curso.cod_curso} - #{cr_curso.round(0)}"
        end
        puts "----------------------------------"
    end
end