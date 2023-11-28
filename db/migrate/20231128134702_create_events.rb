class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
        t.string :name
        t.datetime :startdate
        t.datetime :enddate
        t.integer :club_id
      t.timestamps
    end
  end
end
