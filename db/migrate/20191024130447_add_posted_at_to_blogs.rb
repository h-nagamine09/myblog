class AddPostedAtToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :posted_at, :datetime
  end
end
