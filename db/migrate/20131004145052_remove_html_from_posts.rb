class RemoveHtmlFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :html
  end

  def down
    add_column :posts, :html, :string
  end
end
