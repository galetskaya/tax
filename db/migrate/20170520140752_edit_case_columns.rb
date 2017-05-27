class EditCaseColumns < ActiveRecord::Migration[5.0]
    def change
    add_column :cases, :body, :text
    rename_column :cases, :image_link, :title
  end
end
