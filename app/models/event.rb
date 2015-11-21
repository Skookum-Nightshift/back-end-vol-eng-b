class Event < ActiveRecord::Base
	belongs_to :opportunity
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	def cart_action(current_user_id)
	  if $redis.sismember "cart#{current_user_id}", id
	    "Remove from"
	  else
	    "Add to"
	  end
	end
end
