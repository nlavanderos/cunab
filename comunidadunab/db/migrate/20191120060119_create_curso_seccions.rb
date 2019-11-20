class CreateCursoSeccions < ActiveRecord::Migration[6.0]
  def change
    create_table :curso_seccions do |t|
      t.integer :curso_id
      t.integer :seccion_id

      t.timestamps
    end

  end
end
