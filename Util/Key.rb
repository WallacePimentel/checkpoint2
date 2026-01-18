class Key
    attr_reader :aluno
    attr_reader :disciplina

    def initialize(aluno, disciplina)
        @aluno = aluno
        @disciplina = disciplina
    end
end