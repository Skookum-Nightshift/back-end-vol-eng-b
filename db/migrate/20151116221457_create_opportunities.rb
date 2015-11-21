class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :contact

      t.timestamps null: false
    end
  end
end
