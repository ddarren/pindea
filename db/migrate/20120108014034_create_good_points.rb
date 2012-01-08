class CreateGoodPoints < ActiveRecord::Migration
  def change
    create_table :good_points do |t|
      t.text :text
      t.timestamps
    end
  end
end
