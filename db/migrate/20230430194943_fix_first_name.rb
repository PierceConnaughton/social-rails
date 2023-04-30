class FixFirstName < ActiveRecord::Migration[7.0]
  def change
    def self.up
      rename_column :accounts, :fisrt_name, :first_name
    end
  end
end
