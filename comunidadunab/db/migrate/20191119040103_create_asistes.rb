class CreateAsistes < ActiveRecord::Migration[6.0]
  def change
    create_table :asistes do |t|

      t.timestamps
    end
  end
end
