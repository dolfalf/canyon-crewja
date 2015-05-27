json.array!(@student_logs) do |student_log|
  json.extract! student_log, :id, :branch_id, :student_id, :sequence_no, :log_entry_date, :log_entry_contents, :log_engry_person
  json.url student_log_url(student_log, format: :json)
end
