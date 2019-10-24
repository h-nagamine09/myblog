class AddStatusToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :status, :string, default: "draft"
  end
end
