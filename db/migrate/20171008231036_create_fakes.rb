class CreateFakes < ActiveRecord::Migration[5.1]
  def change
    create_table :fakes do |t|
    	t.string :title
    	t.string :url
    	t.string :source
    	t.string :creator_id

      t.timestamps
    end
  end
end
