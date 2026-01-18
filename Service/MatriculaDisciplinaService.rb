require 'singleton'

class MatriculaDisciplinaService
    include Singleton

    def initialize
        @repositorio_matriculas_disciplinas = []
    end

    def adicionar_matricula_disciplina(matricula_disciplina)
        @repositorio_matriculas_disciplinas.push(matricula_disciplina)
    end

    def buscar_matricula_disciplina(key)
        @repositorio_matriculas_disciplinas.find do |matricula_disciplina|
            matricula_disciplina.key.cod_matricula == key.cod_matricula &&
            matricula_disciplina.key.cod_disciplina == key.cod_disciplina
        end
    end

    def remover_matricula_disciplina(matricula_disciplina)
        @repositorio_matriculas_disciplinas.delete(matricula_disciplina)
    end

    def listar_matriculas_disciplinas
        @repositorio_matriculas_disciplinas.each do |matricula_disciplina|
            puts "Matrícula: #{matricula_disciplina.key.cod_matricula}, Disciplina: #{matricula_disciplina.key.cod_disciplina} Nota: #{matricula_disciplina.nota} Ano/Semestre: #{matricula_disciplina.ano_semestre}"
        end
    end
end