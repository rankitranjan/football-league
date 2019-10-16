class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.integer :pos
      t.string :team
      t.integer :p
      t.integer :w
      t.integer :l
      t.integer :d
      t.integer :f
      t.integer :a
      t.integer :pts

      t.timestamps
    end
  end
end
