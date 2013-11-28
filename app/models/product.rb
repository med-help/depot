class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :product_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :product_url, uniqueness: true
  validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)$}i, message: 'URL должен указывать на изображение!', :multiline => true}
end
