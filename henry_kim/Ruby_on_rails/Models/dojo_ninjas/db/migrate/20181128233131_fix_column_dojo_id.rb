class FixColumnDojoId < ActiveRecord::Migration
  def change
    rename_column :ninjas, dojo, :dojo_id
  end
end
