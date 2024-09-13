# app/models/concerns/voting_logic.rb
module VotingLogic
  extend ActiveSupport::Concern

  included do
    validates :vote, inclusion: { in: [true, false] }
  end

  def cast_vote(vote_value)
    update(vote: vote_value)
  end
end
