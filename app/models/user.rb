class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :submission, dependent: :destroy

  def self.reward_winners 
    winners = Submission.find_top_three
    
    first = winners.first.user
    first.increment(:points, by=15).save!

    second = winners.second.user
    second.increment(:points, by=10).save!

    third = winners.third.user
    third.increment(:points, by=5).save!
  end
end
