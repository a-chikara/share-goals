class Post < ApplicationRecord

  belongs_to :room
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :memo
    validates :category
    validates :day
    validates :deadline
  end

end
