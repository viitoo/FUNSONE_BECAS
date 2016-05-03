class AgregarMunicipio < ActiveRecord::Migration
  def up
	add_column :estudiantes, :municipio, :string
  end

  def down
	remove_column :estudiantes , :municipio
  end
end
