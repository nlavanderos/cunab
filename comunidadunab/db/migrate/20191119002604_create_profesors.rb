class CreateProfesors < ActiveRecord::Migration[6.0]
  def change
    create_table :profesors, :id => false do |t|
      t.primary_key :id
      t.string :nombre
      t.string :apellido
      t.string :email
      t.boolean :tipo

      t.timestamps
    end
  end
end
