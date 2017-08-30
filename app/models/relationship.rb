class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :follow, class_name: 'User'
  
  validates :user_id, presence: true
  validates :follow_id, presence: true
  
  belongs_to :micropost
  belongs_to :favorite, class_name: 'Microposts'
  
  validates :micropost_id, presence: true
  validates :favorite_id, presence: true
end
