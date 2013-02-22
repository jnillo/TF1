class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|

      t.string :title, :null => false
      t.string :description
      t.string :url, :null => false
      t.integer :type_recipe, :null => false

      t.references :comment
      t.references :user
      t.references :ingredient

      t.timestamps
    end
  end
end
