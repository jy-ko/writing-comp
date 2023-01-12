class RewardJob < ApplicationJob
  queue_as :default

  def perform(*args)
    if Submission.count >= 3 
      User.reward_winners
    end 
  end
end
