json.array!(@student_cources) do |student_cource|
  json.extract! student_cource, :id, :branch_id, :student_id, :sequence_no, :coruse_id, :lecture_startdate, :lecture_enddate, :timetable_week, :timetabel_time, :class
  json.url student_cource_url(student_cource, format: :json)
end
