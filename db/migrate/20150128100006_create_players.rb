class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string :name
      t.string :position
      t.integer :average
      t.references :team

    end
  end
end
