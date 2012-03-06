class CreateSiteSuggestions < ActiveRecord::Migration
  def change
    create_table :site_suggestions do |t|
      t.string :email
      t.string :text
      t.string :name

      t.timestamps
    end
  end
end
