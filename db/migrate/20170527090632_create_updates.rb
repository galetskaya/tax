class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.belongs_to :user
      t.belongs_to :case

      t.string :title
      t.string :domain
      t.text :body
      t.string :external_link

      t.timestamps null: false
    end
  end
end
