class Addcommenttopost < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :no_of_comments, :integer
  end
end
