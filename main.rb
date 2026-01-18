require 'csv'
require_relative 'Model/Aluno'
require_relative 'Model/Curso'
require_relative 'Model/Disciplina'
require_relative 'Model/MatriculaDisciplina'
require_relative 'Service/AlunoService'
require_relative 'Service/DisciplinaService'
require_relative 'Service/CursoService'
require_relative 'Service/MatriculaDisciplinaService'
require_relative 'Util/Key'

#Inicializando os serviços como singletons
aluno_service = AlunoService.instance
disciplina_service = DisciplinaService.instance
curso_service = CursoService.instance
matricula_disciplina_service = MatriculaDisciplinaService.instance

aluno_service.configure(disciplina_service)
curso_service.configure(aluno_service)

CSV.foreach('notas.csv', headers: true) do |row|

    curso = curso_service.buscar_curso(row['COD_CURSO'])
    if (curso.nil?)
        curso = Curso.new(row['COD_CURSO'])
        curso_service.adicionar_curso(curso)
    end

    disciplina = disciplina_service.buscar_disciplina(row['COD_DISCIPLINA'])
    if (disciplina.nil?)
        disciplina = Disciplina.new(row['COD_DISCIPLINA'], curso, row['CARGA_HORARIA'].to_i)
        disciplina_service.adicionar_disciplina(disciplina)
        curso.adicionar_disciplina(disciplina)
    end

    aluno = aluno_service.buscar_aluno(row['MATRICULA'])
    if (aluno.nil?)
        aluno = Aluno.new(row['MATRICULA'])
        aluno_service.adicionar_aluno(aluno)
        curso.adicionar_aluno(aluno)
    end

    key = Key.new(row['MATRICULA'], row['COD_DISCIPLINA'])
    matricula_disciplina = matricula_disciplina_service.buscar_matricula_disciplina(key)
    if (matricula_disciplina.nil?)
        matricula_disciplina = MatriculaDisciplina.new(key,row['NOTA'].to_f, row['ANO_SEMESTRE'])
        matricula_disciplina_service.adicionar_matricula_disciplina(matricula_disciplina)
        aluno.adicionar_matriculas_disciplina(matricula_disciplina)
    end
end

aluno_service.listar_cr_dos_alunos
curso_service.listar_cr_dos_cursos