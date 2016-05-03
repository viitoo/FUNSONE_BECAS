class AgregarTipoBeca < ActiveRecord::Migration
  def up
  	  	add_column :becas, :tipo_beca , :string

  end

  def down
  	  	remove_column :tipo_beca, :regimen

  end
end
