class ChangeLengthOfIdeaTextFields < ActiveRecord::Migration
  def up
    change_column :ideas, :description, :string, :limit => 512
  end

  def down
    change_column :ideas, :description, :string, :limit => 256
  end
end
