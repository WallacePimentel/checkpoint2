class MatriculaDisciplinaService
    def initialize
        @repositorio_matriculas_disciplinas = []
    end

    def adicionar_matricula_disciplina(matricula_disciplina)
        @repositorio_matriculas_disciplinas.push(matricula_disciplina)
    end

    def buscar_matricula_disciplina(key)
        @repositorio_matriculas_disciplinas.find do |matricula_disciplina|
            matricula_disciplina.aluno.cod_matricula == key.aluno.cod_matricula &&
            matricula_disciplina.disciplina.cod_disciplina == key.disciplina.cod_disciplina
        end
    end

    def remover_matricula_disciplina(matricula_disciplina)
        @repositorio_matriculas_disciplinas.delete(matricula_disciplina)
    end
end