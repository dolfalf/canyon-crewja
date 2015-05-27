json.array!(@student_infos) do |student_info|
  json.extract! student_info, :id, :branch_id, :child_id, :studentname
  json.url student_info_url(student_info, format: :json)
end
