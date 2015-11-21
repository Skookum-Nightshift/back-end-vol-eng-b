class RemoveLocationFromOpportunities < ActiveRecord::Migration
  def change
    remove_column :opportunities, :location, :string
  end
end
