class RewardJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "I'm starting the reward job"
    sleep 3
    puts "OK I'm done now"
  end
end
