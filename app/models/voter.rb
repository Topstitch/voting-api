class Voter < ActiveRecord::Base
  has_one :vote
  has_one :api_key

end
