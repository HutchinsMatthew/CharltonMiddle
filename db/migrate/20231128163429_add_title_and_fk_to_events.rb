class AddTitleAndFkToEvents < ActiveRecord::Migration[7.0]
  def change 
    add_column :events, :title, :string 
    add_column :events, :club_id, :integer
  end
end
