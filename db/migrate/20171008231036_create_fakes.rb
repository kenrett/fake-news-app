class CreateFakes < ActiveRecord::Migration[5.1]
  def change
    create_table :fakes do |t|
    	t.string :title
    	t.string :source
    	t.integer :creator_id

      t.timestamps
    end
  end
end
