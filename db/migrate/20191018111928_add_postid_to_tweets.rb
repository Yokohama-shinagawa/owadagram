class AddPostidToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :post_id, :integer
  end
end
