class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      t.string :topic_name
      t.integer :user_id
      t.timestamps
    end
  end
end
