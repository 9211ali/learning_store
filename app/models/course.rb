class Course < ApplicationRecord
  has_one_attached :image do |attachment|
    attachment.variant :thumb, resize_to_fit: [100, 100]
  end
end

