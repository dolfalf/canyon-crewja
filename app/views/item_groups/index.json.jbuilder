json.array!(@item_groups) do |item_group|
  json.extract! item_group, :id, :item_group_name
  json.url item_group_url(item_group, format: :json)
end
