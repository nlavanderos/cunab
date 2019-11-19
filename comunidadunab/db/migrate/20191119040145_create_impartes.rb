class CreateImpartes < ActiveRecord::Migration[6.0]
  def change
    create_table :impartes do |t|

      t.timestamps
    end
  end
end
