class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user
      t.string :password_digest
      t.string :mail
      t.integer :nivel

      t.timestamps
    end
  end
end
