class AddTitleToClubs < ActiveRecord::Migration[7.0]
  def change 
    add_column :clubs, :title, :string
  end
end
