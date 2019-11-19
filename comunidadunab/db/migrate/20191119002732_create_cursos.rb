class CreateCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :cursos, :id => false do |t|
      t.primary_key :id
      t.string :nombre
      t.integer :periodo

      t.timestamps
    end
  end
end
