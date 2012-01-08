class CreateBadPoints < ActiveRecord::Migration
  def change
    create_table :bad_points do |t|
      t.text :text
      t.references :idea

      t.timestamps
    end
    add_index :bad_points, :idea_id
  end
end
