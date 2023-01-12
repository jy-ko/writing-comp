class Submission < ApplicationRecord
  belongs_to :user
  validates :essay, presence: true

  def character_count(essay)
    essay.length
  end
end
