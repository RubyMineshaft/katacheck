class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :game, null: false, foreign_key: true
      t.text :win_rates
      t.text :scores
      t.string :type
      t.string :engine
      t.string :engine_version
      t.string :network
      t.string :network_size
      t.datetime :date
      t.string :strength
      t.float :win_rate
      t.text :moves
      t.integer :total_moves
      t.integer :black_tier_1
      t.integer :black_tier_2
      t.integer :black_tier_3
      t.integer :black_tier_4
      t.integer :white_tier_1
      t.integer :white_tier_2
      t.integer :white_tier_3
      t.integer :white_tier_4
      t.integer :black_total
      t.integer :white_total

      t.timestamps
    end
  end
end
