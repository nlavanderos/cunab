class CreateForos < ActiveRecord::Migration[6.0]
  def change
    create_table :foros do |t|
      t.integer :id
      t.string :anuncio
      t.string :titulo

      t.timestamps
    end
  end
end
