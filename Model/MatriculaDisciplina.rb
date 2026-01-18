class MatriculaDisciplina
    attr_reader :key
    attr_accessor :nota

    def initialize(key,nota, ano_semestre)
        @key = key
        @nota = nota
        @ano_semestre = ano_semestre
    end
end
