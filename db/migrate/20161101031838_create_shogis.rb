class CreateShogis < ActiveRecord::Migration[5.0]
  def change
    create_table :shogis do |t|
      t.string :Player
      t.string :FavoriteStrategy
      t.string :picture

      t.timestamps
    end
  end
end
