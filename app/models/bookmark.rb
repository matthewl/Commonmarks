class Bookmark < ApplicationRecord
  scope :visible, -> { where(hidden: false) }

  validates :url, uniqueness: { case_sensitive: false }, presence: true
  validates :title, presence: true

  def tags=(values)
    super(values.split(' '))
  end
end
