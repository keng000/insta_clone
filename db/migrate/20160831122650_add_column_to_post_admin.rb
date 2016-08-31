class AddColumnToPostAdmin < ActiveRecord::Migration
  def change
    add_column :post_admins, :image_url_cache, :string
  end
end
