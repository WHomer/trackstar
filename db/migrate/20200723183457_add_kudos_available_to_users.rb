class AddKudosAvailableToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :kudos_available, :integer, default: 0
  end
end
