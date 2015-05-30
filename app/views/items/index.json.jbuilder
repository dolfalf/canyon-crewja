json.array!(@items) do |item|
  json.extract! item, :id, :item_name
  json.url item_url(item, format: :json)
end
