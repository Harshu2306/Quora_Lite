class CreateTopicUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :topic_users do |t|
      t.integer :user_id
      t.integer :topic_id
      t.timestamps
    end
  end
end
