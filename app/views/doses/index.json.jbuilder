json.array!(@doses) do |dose|
  json.extract! dose, :id, :description, :cocktail_id, :ingredient_id
  json.url dose_url(dose, format: :json)
end
