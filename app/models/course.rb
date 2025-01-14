class Course < ApplicationRecord
  has_one_attached :image do |attachment|
    attachment.variant :thumb, resize_to_fit: [100, 100]
  end

  has_many :lessons, dependent: :destroy
  has_and_belongs_to_many :categories

  def first_lesson
    self.lessons.order(:position).first
  end
end
