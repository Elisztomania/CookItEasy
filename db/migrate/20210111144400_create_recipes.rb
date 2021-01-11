class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :category
      t.integer :cooking_time
      t.integer :prep_time
      t.string :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
