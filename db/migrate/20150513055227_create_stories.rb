class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories,:force =>false do |t|
      t.string :name
      t.string :link

      t.timestamps null: false
    end
  end
end
