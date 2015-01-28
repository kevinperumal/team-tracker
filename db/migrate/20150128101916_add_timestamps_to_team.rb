class AddTimestampsToTeam < ActiveRecord::Migration
    def change_table

      add_column :teams, :created_at, :datetime
      add_column :teams, :updated_at, :datetime

    end
end
