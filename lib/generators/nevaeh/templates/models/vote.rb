# app/models/vote.rb
class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :promotion

  include VotingLogic
end
