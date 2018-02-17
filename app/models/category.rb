class Category < ActiveRecord::Base
  has_many :photos
  has_many :articles
  has_many :jason_articles

  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
