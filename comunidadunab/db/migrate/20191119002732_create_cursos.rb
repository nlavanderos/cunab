class CreateCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :curso do |t|
      t.integer :id
      t.string :nombre
      t.integer :periodo

      t.timestamps
    end
  end
end
    #create_table :cursos, :id => false do |t|
