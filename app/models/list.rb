class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :delete_all
  has_one_attached :photo

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :photo, presence: true
end
