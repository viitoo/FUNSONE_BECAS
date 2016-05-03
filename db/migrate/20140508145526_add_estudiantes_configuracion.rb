class AddEstudiantesConfiguracion < ActiveRecord::Migration
  def up
  	add_column :configuracions, :limite_local, :integer
  	add_column :configuracions, :limite_afuera, :integer
  	add_column :configuracions, :limite_excelencia, :integer
  end

  def down
	remove_column :configuracions, :limite_local
	remove_column :configuracions, :limite_afuera
	remove_column :configuracions, :limite_excelencia
  end
end
