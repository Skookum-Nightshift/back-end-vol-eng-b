class AddLatToEvents < ActiveRecord::Migration
  def change
    add_column :events, :latitude, :float
  end
end
