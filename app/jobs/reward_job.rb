class RewardJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.reward_winners
  end
end
