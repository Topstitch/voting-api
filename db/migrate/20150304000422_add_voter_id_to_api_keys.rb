class AddVoterIdToApiKeys < ActiveRecord::Migration
  def change
    add_column :api_keys, :voter_id, :integer
  end
end
