class RemoveContactFromOpportunities < ActiveRecord::Migration
  def change
    remove_column :opportunities, :contact, :string
  end
end
