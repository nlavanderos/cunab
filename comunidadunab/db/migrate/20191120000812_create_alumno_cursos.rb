class CreateAlumnoCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :alumno_cursos do |t|
      t.integer :alumno_id
      t.integer :curso_id



      t.timestamps
    end
    create_join_table :alumnos, :cursos, column_options: { null: true }
  end
end
