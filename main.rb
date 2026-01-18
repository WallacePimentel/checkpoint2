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
    end
end