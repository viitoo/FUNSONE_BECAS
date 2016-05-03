class AgregaIndices < ActiveRecord::Migration
  def up
  	add_column :becas, :estudiante_id, :integer
  	add_column :estudiantes, :apellido2, :string
  	add_column :reclamos, :id_beca , :integer
  end

  def down

  	remove_column :becas ,:estudiantes_id
	remove_column :estudiantes, :apellido2
  	remove_column :reclamos, :id_beca


  end
end
