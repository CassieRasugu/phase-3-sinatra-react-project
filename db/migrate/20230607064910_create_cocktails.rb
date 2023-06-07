class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |r|
      r.string :name
      r.string :description
      r.string :image

      r.timestamps
    end
    end
  end
end
