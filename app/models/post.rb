class Post < ApplicationRecord

  belongs_to :room
  belongs_to :user
  has_one_attached :image


  with_options presence: true do
    validates :title
    validates :memo
    validates :category_id, numericality: { other_than: 1 } 
    validates :deadline_id, numericality: { other_than: 1 } 
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :deadline

end

