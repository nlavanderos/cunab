class CreatePerteneces < ActiveRecord::Migration[6.0]
  def change
    create_table :perteneces do |t|

      t.timestamps
    end
  end
end
