class StudentInfo < ActiveRecord::Base

  has_one :branch_info
  has_one :inquiry
end
