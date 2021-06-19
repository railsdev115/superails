class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  
  validates :title, presence: true
  validates :body, presence: true
  
  scope :free, -> { where(premium: false) }
  scope :premium, -> { where(premium: true) }
end
