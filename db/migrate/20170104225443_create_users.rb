class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.boolean :password_confirmation
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
