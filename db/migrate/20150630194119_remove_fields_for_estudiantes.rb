class RemoveFieldsForEstudiantes < ActiveRecord::Migration
  def up
    remove_column :estudiantes, :nombres_papa
    remove_column :estudiantes, :apellidos_papa
    remove_column :estudiantes, :cedula_papa
    remove_column :estudiantes, :nombres_mama
    remove_column :estudiantes, :apellidos_mama
    remove_column :estudiantes, :cedula_mama
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

  def down
  end
end
