class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost,
  
  validates :user_id, presence: true
  validates :miropost_id, presence: true

end
