class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.text :description
      t.boolean :is_private

      t.timestamps
    end
  end
end
