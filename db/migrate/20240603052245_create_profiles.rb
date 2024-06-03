class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.text :goal
      t.string :username, null: false
      t.timestamps
    end
  end
end
