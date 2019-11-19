class CreateEscribes < ActiveRecord::Migration[6.0]
  def change
    create_table :escribes do |t|

      t.timestamps
    end
  end
end
