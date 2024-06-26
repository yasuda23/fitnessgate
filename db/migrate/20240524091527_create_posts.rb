class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user,            null: false,  foreign_key: true
      t.text       :workout_details, null: false
      t.string     :title,           null: false
      t.timestamps
    end
  end
end
