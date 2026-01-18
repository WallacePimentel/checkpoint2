class CursoService
    def initialize(aluno_service)
        @repositorio_alunos = []
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
end