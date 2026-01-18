require 'csv'

CSV.foreach('notas.csv', headers: true) do |row|
    puts row['MATRICULA']
    puts row['NOTA']
end