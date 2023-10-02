class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :password_digest, null: false
      t.string :session_token, unique: true, null: false
      t.timestamps
    end
    add_index :users, :session_token
  end
end
