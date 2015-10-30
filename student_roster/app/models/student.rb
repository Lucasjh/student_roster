class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :cell_phone, presence: true
  validates :home_phone, presence: true
  validates :work_phone, presence: true
  validates_format_of :email, :with => /.+@.+\..+/i
  validates :cell_phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "format as 000-000-0000" }
  validates :home_phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "format as 000-000-0000" }
  validates :work_phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "format as 000-000-0000" }
end
