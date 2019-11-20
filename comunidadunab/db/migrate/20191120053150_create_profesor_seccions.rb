class CreateProfesorSeccions < ActiveRecord::Migration[6.0]
  def change
    create_table :profesor_seccions do |t|
      t.integer :profesor_id
      t.integer :seccion_id

      t.timestamps
    end

  end
end
