class AgregarEstudioSocioEconomico < ActiveRecord::Migration
  def up
  	add_column :becas, :estudio_economico, :string
  end

  def down
  	remove_column :becas, :estudio_economico
  end
end
