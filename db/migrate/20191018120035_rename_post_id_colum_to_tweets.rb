class RenamePostIdColumToTweets < ActiveRecord::Migration[5.2]
  def change
    rename_column :tweets, :post_id, :user_id
  end
end
