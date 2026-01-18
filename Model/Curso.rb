class Curso
    attr_reader :cod_curso
    
    def initialize(cod_curso)
        @cod_curso = cod_curso
        @disciplinas = []
        @alunos = []
    end

    def adicionar_disciplina(disciplina)
        @disciplinas.push(disciplina)
    end

    def listar_disciplinas
        @disciplinas.each do |disciplina|
            puts disciplina
        end
    end

    def buscar_disciplina(disciplina)
        @disciplinas.include?(disciplina)
    end

    def remover_disciplina(disciplina)
        @disciplinas.delete(disciplina)
    end

    def adicionar_aluno(aluno)
        @alunos.push(aluno)
    end

    def listar_alunos
        @alunos.each do |aluno|
            puts aluno
        end
    end

    def buscar_aluno(aluno)
        @alunos.include?(aluno)
    end

    def remover_aluno(aluno)
        @alunos.delete(aluno)
    end
end