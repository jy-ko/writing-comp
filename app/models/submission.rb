class Submission < ApplicationRecord
  belongs_to :user
  validates :essay, presence: true

  def self.find_top_three
    Submission.order("LENGTH(essay) DESC").limit(3)
  end
end
