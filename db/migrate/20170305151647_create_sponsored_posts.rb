class CreateSponsoredPosts < ActiveRecord::Migration
  def change
    create_table :sponsored_posts do |t|
      t.string :title
      t.string :body
      t.integer :price

      t.timestamps null: false
    end
    add_index :sponsored_posts, :body
  end
end
