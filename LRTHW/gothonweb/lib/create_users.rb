class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      # Adds vadilation and passowrd confirmation.
      t.string :password_digest
    end
  end
end
