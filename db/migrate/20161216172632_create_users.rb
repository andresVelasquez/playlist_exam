class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :email, unique: true # this adds unique constraint to email column in users table in case app validation fails though this would throw up an exception in that case
  end
end
