class Bookmark < ApplicationRecord
  belongs_to :movie # , dependent: :restrict_with_error
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
