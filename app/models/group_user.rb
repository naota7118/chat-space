class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to  :user
  # validates :user_id, uniqueness: true
end
