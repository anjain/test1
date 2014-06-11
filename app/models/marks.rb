class Marks < ActiveRecord::Base
 belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :physics, presence: true
  validates :chamistry, presence: true
  validates :maths, presence: true
  validates :user_id, presence: true
end
