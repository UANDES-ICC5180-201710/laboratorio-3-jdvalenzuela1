class Enrollment < ApplicationRecord
  belongs_to :student, class_name: 'Person', foreign_key: 'person_id'
  belongs_to :course, class_name: 'Couse', foreign_key: 'course_id'

  validates_associated :student
  validates_associated :course
end
