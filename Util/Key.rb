class Key
    attr_reader :cod_matricula
    attr_reader :cod_disciplina

    def initialize(cod_matricula, cod_disciplina)
        @cod_matricula = cod_matricula
        @cod_disciplina = cod_disciplina
    end
end