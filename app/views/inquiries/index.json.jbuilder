json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :branch_id
  json.url inquiry_url(inquiry, format: :json)
end
