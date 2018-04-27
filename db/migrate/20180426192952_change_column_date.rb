class ChangeColumnDate < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :date_of_birth, :date, null: false
  end

  def down
    change_column :users, :date_of_birth, :datetime, null: false
  end
end
