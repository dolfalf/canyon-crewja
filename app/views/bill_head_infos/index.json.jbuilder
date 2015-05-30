json.array!(@bill_head_infos) do |bill_head_info|
  json.extract! bill_head_info, :id, :payment
  json.url bill_head_info_url(bill_head_info, format: :json)
end
