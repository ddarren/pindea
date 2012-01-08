class CreateGoodPoints < ActiveRecord::Migration
  def change
    create_table :good_points do |t|
      t.text :text
      t.references :idea

      t.timestamps
    end
    add_index :good_points, :idea_id
  end
end
