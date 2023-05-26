class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  with_options presence:true do
    validates :title, presence: true
    validates :catch_copy, presence: true
    validates :concept, presence: true
    validates :image, presence: true
  end
end
