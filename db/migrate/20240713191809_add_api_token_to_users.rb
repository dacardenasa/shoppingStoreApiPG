class AddApiTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :api_token, :string, default: -> { "gen_random_uuid()" }
    add_index :users, :api_token, unique: true
  end
end
