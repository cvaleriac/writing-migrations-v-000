  connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
)
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
  id INTEGER PRIMARY KEY,
  name TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

class CreateStudents < ActiveRecord::Migration
def change
  create_table :costumes do |t|
   t.string :name
end
end
end
