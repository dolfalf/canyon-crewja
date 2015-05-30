class StudentCourse < ActiveRecord::Base

  has_one :branch_info
  belongs_to :student_course
end
