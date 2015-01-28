class AddTimestampsToPlayer < ActiveRecord::Migration
    def change_table

      add_column :players, :created_at, :datetime
      add_column :players, :updated_at, :datetime

    end
end
