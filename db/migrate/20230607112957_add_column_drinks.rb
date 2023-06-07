class AddColumnDrinks < ActiveRecord::Migration[6.1]
  def change
    add_column :drinks, :picture, :string

  end
end
