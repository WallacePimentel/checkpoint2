class Aluno

    def initialize(cod_matricula)
        @cod_matricula = cod_matricula
        @disciplinas = []
    end

    def adicionar_disciplina(disciplina)
        @disciplinas.push(disciplina)
    end

    def remover_disciplina(disciplina)
        @disciplinas.delete(disciplina)
    end

    def listar_disciplinas
        @disciplinas.each do |disciplina|
            puts disciplina
        end
    end
end

    