class AddStatusToDemands < ActiveRecord::Migration[6.0]
  def change
    add_column :demands, :status, :string, null: false, default: "pending"
  end
end
