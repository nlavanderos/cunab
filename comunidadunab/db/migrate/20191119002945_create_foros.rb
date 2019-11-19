class CreateForos < ActiveRecord::Migration[6.0]
  def change
    create_table :foros, :id => false do |t|
      t.primary_key :id
      t.string :anuncio
      t.string :foro

      t.timestamps
    end
  end
end
