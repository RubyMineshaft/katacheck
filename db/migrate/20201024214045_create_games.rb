class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :black
      t.integer :white
      t.string :name
      t.boolean :ranked
      t.string :speed
      t.string :outcome
      t.boolean :black_lost
      t.boolean :white_lost
      t.boolean :annulled
      t.datetime :started
      t.datetime :ended
      t.text :historical_ratings

      t.timestamps
    end
  end
end
