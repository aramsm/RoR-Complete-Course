class Article < ApplicationRecord
  validates :title, length: { minimum: 3, maximum: 50 }
  validadtes :description, length: { minimum: 10 }
end
