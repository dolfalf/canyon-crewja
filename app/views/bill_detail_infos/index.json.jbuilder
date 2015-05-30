json.array!(@bill_detail_infos) do |bill_detail_info|
  json.extract! bill_detail_info, :id, :application_id
  json.url bill_detail_info_url(bill_detail_info, format: :json)
end
