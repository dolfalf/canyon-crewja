class BranchInfo < ActiveRecord::Base

  belongs_to :inquiry
  belongs_to :student_info
end
