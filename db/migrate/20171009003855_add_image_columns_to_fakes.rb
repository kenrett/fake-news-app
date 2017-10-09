class AddImageColumnsToFakes < ActiveRecord::Migration[5.1]
  def up
    add_attachment :fakes, :image
  end

  def down
    remove_attachment :fakes, :image
  end
end
