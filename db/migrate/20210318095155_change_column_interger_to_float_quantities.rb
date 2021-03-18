class ChangeColumnIntergerToFloatQuantities < ActiveRecord::Migration[6.0]
  def change
    change_column :quantities, :q, :float
  end
end
