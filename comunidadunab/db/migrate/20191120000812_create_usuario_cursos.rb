class CreateUsuarioCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :usuario_cursos do |t|
      t.integer :usuario_id
      t.integer :curso_id



      t.timestamps
    end
    create_join_table :usuarios, :cursos, column_options: { null: true }
  end
end
