class CreateProfesors < ActiveRecord::Migration[6.0]
  def change
    create_table :profesor do |t|
      t.integer :id
      t.string :nombre
      t.string :apellido
      t.string :email
      t.boolean :tipo

      t.timestamps
    end
  end
end
