class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :delete_all

  validates :name, presence: true
  validates :name, uniqueness: true
end
