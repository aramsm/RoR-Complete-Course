class Article < ApplicationRecord
  validates :title, length: { minimum: 3, maximum: 50 }
  validates :description, length: { minimum: 10 }
end
