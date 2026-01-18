require 'singleton'

class DisciplinaService
    include Singleton

    def initialize
        @repositorio_disciplinas = []
    end

    def adicionar_disciplina(disciplina)
        @repositorio_disciplinas.push(disciplina)
    end

    def buscar_disciplina(cod_disciplina)
        @repositorio_disciplinas.find { |disciplina| disciplina.cod_disciplina == cod_disciplina }
    end

    def remover_disciplina(disciplina)
        @repositorio_disciplinas.delete(disciplina)
    end

    def listar_disciplinas
        @repositorio_disciplinas.each do |disciplina|
            puts "Disciplina: #{disciplina.cod_disciplina} Carga Horária: #{disciplina.carga_horaria}"
        end
    end
end
