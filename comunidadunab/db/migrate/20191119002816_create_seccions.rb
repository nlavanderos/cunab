class CreateSeccions < ActiveRecord::Migration[6.0]
  def change
    create_table :seccions  do |t|
      t.integer :id
      t.integer :seccion

      t.timestamps
    end
  end
end
