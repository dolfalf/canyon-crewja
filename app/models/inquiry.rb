class Inquiry < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :branch_info_id, :inquiry_date, presence: true
  validates_length_of :address_zip, minimum: 5, too_short: 'please enter at least 5 characters'

  has_one :branch_info
  belongs_to :student_info
end
