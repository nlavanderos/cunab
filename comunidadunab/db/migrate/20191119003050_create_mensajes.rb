class CreateMensajes < ActiveRecord::Migration[6.0]
  def change
    create_table :mensajes, :id => false do |t|
      t.primary_key :id
      t.string :mensaje

      t.timestamps
    end
  end
end
