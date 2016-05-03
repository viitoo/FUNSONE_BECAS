class AgregarRegimenBecaEstudio < ActiveRecord::Migration
  def up
  	add_column :becas, :regimen , :string
  end

  def down
  	remove_column :becas, :regimen
  end
end
