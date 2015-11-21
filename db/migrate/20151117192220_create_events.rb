class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :date
      t.string :time
      t.integer :opportunity_id

      t.timestamps null: false
    end
  end
end
