class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :type
      t.string :content
      t.string :title
      t.string :url
      t.string :html
      t.integer :user_id

      t.timestamps
    end
  end
end
