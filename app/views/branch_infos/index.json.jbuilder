json.array!(@branch_infos) do |branch_info|
  json.extract! branch_info, :id, :branch_name, :address
  json.url branch_info_url(branch_info, format: :json)
end
