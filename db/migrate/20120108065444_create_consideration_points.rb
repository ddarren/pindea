class CreateConsiderationPoints < ActiveRecord::Migration
  def change
    create_table :consideration_points do |t|
      t.text :text
      t.references :idea

      t.timestamps
    end
    add_index :consideration_points, :idea_id
  end
end
