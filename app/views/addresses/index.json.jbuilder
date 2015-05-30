json.array!(@addresses) do |address|
  json.extract! address, :id, :post_no1
  json.url address_url(address, format: :json)
end
