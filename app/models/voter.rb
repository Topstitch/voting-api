class Voter < ActiveRecord::Base
  has_one :vote
  has_one :api_key

  # def give_api_key
  #   ApiKey.generate_access_token
  # end
end
