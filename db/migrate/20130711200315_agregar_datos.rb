class AgregarDatos < ActiveRecord::Migration
  def up
  	add_column :reclamos, :observacion, :text
  	add_column :reclamos, :solucion, :text
  	add_column :reclamos, :status, :boolean

  end

  def down
  	remove_timestamps(:reclamos)
  	remove_column :reclamos, :observacion
  	remove_column :reclamos, :solucion
  	remove_column :reclamos, :status

  end
end
