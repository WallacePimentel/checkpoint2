class AlunoService
    def initialize(disciplina_service)
        @repositorio_alunos = []
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
end