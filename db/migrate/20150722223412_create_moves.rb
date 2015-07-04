class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.text :step
      t.belongs_to :plan, index: true, foreign_key: true

      t.timestamps
    end
  end
end
