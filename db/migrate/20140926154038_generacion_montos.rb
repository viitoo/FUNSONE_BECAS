class GeneracionMontos < ActiveRecord::Migration
  def up
  	add_column :configuracions, :monto_local, :integer
  	add_column :configuracions, :monto_afuera, :integer
    add_column :configuracions, :monto_excelencia, :integer
  end

  def down
  	remove_column :configuracions, :monto_local, :integer
  	remove_column :configuracions, :monto_afuera, :integer
    remove_column :configuracions, :monto_excelencia, :integer
  end
end
