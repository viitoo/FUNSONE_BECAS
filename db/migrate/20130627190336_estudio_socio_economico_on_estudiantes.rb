class EstudioSocioEconomicoOnEstudiantes < ActiveRecord::Migration
  def up
  	add_column :estudiantes, :parentezco, :string
  	add_column :estudiantes, :trabajo_actual, :boolean
  	add_column :estudiantes, :nombre_empresa, :string
	add_column :estudiantes, :rif_empresa, :string
	add_column :estudiantes, :cargo_empresa, :string
	add_column :estudiantes, :direccion_empresa, :text
	add_column :estudiantes, :telefono_empresa, :string
	add_column :estudiantes, :sueldo_empresa, :string
	add_column :estudiantes, :jefe_inmediato , :string
	add_column :estudiantes, :telf_jefe, :string
	add_column :estudiantes, :nombre_familiar, :string
	add_column :estudiantes, :apellido_familiar, :string
	add_column :estudiantes, :cedula_familiar, :string
	add_column :estudiantes, :telf_familiar, :string
  end

  def down
  	remove_column :estudiantes, :parentezco
  	remove_column :estudiantes, :trabajo_actual
  	remove_column :estudiantes, :nombre_empresa
	remove_column :estudiantes, :rif_empresa
	remove_column :estudiantes, :cargo_empresa
	remove_column :estudiantes, :direccion_empresa
	remove_column :estudiantes, :telefono_empresa
	remove_column :estudiantes, :sueldo_empresa
	remove_column :estudiantes, :jefe_inmediato
	remove_column :estudiantes, :telf_jefe
	remove_column :estudiantes, :nombre_familiar
	remove_column :estudiantes, :apellido_familiar
	remove_column :estudiantes, :cedula_familiar
	remove_column :estudiantes, :telf_familiar
  end
end
