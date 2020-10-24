class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :username
      t.boolean :professional
      t.integer :ranking
      t.float :rating
      t.string :country
      t.string :language
      t.text :about
      t.boolean :supporter
      t.boolean :is_moderator
      t.boolean :is_bot
      t.string :icon
      t.datetime :registration_date

      t.timestamps
    end
  end
end
