class ChangeCoefficientToFloatInPositions < ActiveRecord::Migration[7.1]
  def change
    change_column :positions, :coefficient, :float
  end
end
