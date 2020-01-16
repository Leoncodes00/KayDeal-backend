class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :numSold
      t.string :location
      t.integer :funds

      t.timestamps
    end
  end
end
