class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :image
      t.string :token
      t.string :refresh_token
      t.datetime :token_expiry
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
