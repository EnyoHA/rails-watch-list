class Movie < ApplicationRecord
  has_many :bookmarks # , dependent: :restrict_with_error
  # belongs_to :list

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
