class CreateSeccions < ActiveRecord::Migration[6.0]
  def change
    create_table :seccions, :id => false do |t|
      t.primary_key :id
      t.integer :seccion

      t.timestamps
    end
  end
end
