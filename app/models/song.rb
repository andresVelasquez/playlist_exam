class Song < ApplicationRecord
  belongs_to :user
  has_many :users, through: :adds
  has_many :adds

  validates :title, :artist, presence: true, length: { minimum: 2 }
end
