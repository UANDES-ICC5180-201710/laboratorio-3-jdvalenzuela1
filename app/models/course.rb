class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'

  def to_s
    return title
  end
  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
