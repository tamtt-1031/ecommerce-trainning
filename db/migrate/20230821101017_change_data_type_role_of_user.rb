class ChangeDataTypeRoleOfUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :role, :integer
  end
end
