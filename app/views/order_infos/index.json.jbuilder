json.array!(@order_infos) do |order_info|
  json.extract! order_info, :id, :application_id
  json.url order_info_url(order_info, format: :json)
end
