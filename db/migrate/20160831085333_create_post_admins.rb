class CreatePostAdmins < ActiveRecord::Migration
  def change
    create_table :post_admins do |t|
      t.string   "image_url"
      t.integer  "user_id"

      t.timestamps null: false
    end
  end
end
