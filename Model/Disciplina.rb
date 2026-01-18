class Disciplina

    attr_accessor :carga_horaria
    attr_accessor :curso
    
    def initialize(cod_disciplina, curso, carga_horaria)
        @cod_disciplina = cod_disciplina
        @curso = curso
        @carga_horaria = carga_horaria
    end
end
