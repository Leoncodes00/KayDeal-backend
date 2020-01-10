class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.integer :buyer_id
      t.string :image
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
