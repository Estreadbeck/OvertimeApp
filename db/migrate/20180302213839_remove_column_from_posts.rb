class RemoveColumnFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :overtime_request, :decimal
  end
end
