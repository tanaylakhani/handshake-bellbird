class CreateUpvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :upvotes do |t|
      t.references :alarm, foreign_key: true
      t.string :session_id

      t.timestamps
    end
  end
end
