class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :type
      t.references :fake, foreign_key: true
      t.references :vote, foreign_key: true

      t.timestamps
    end
  end
end
