class Aluno
    attr_reader :cod_matricula
    attr_reader :matriculas_disciplina

    def initialize(cod_matricula)
        @cod_matricula = cod_matricula
        @matriculas_disciplina = []
    end

    def adicionar_matriculas_disciplina(matriculas_disciplina)
        @matriculas_disciplina.push(matriculas_disciplina)
    end

    def remover_matriculas_disciplina(matriculas_disciplina)
        @matriculas_disciplina.delete(matriculas_disciplina)
    end

    def buscar_matriculas_disciplina(matriculas_disciplina)
        @matriculas_disciplina.include?(matriculas_disciplina)
    end

    def listar_matriculas_disciplina
        @matriculas_disciplina.each do |matricula_disciplina|
            puts matricula_disciplina
        end
    end
end

    