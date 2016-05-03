class AddNombre2Apellido2 < ActiveRecord::Migration
  def up
        remove_column :estudiantes,:apellido2
	add_column :estudiantes, :nombre2 , :string
	add_column :estudiantes, :apellido2, :string
	add_column :estudiantes, :r_nombre1, :string
	add_column :estudiantes, :r_nombre2, :string
	add_column :estudiantes, :r_apellido1, :string
	add_column :estudiantes, :r_apellido2, :string
	add_column :estudiantes, :r_cedula , :string
	add_column :estudiantes, :r_fecha_nac, :date
	add_column :estudiantes, :r_nacionalidad, :string
	add_column :estudiantes, :r_sexo,:string
  end

  def down
	add_column :estudiantes,:apellido2
        remove_column :estudiantes, :nombre2 , :string
        remove_column :estudiantes, :apellido2, :string
        remove_column :estudiantes, :r_nombre1, :string
        remove_column :estudiantes, :r_nombre2, :string
        remove_column :estudiantes, :r_apellido1, :string
        remove_column :estudiantes, :r_apellido2, :string
        remove_column :estudiantes, :r_cedula , :string
        remove_column :estudiantes, :r_fecha_nac, :date
        remove_column :estudiantes, :r_nacionalidad, :string
        remove_column :estudiantes, :r_sexo,:string




  end
end
