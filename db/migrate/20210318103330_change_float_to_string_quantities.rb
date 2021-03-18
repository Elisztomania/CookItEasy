class ChangeFloatToStringQuantities < ActiveRecord::Migration[6.0]
  def change
    change_column :quantities, :q, :string
  end
end
