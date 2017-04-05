class Person < ApplicationRecord
  has_many :enrollements, through: :enrollments
  validates :first_name, presence: true, length: { maximum: 30 }, numericality: false
  validates :last_name, presence: true, length: { maximum: 30 }, numericality: false
  validates :email, presence: true, uniqueness: true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }, length: { maximum: 50 }
  validates :is_professor,  inclusion: { in: [true, false] }

  def to_s
    return first_name + ' ' + last_name
  end
end
