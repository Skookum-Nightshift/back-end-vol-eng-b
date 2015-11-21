json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :name, :image, :location, :contact
  json.url opportunity_url(opportunity, format: :json)
end
